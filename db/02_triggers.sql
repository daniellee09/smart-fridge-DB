USE smart_fridge;

DELIMITER $$

CREATE TRIGGER trg_auto_expire_date
BEFORE INSERT ON My_Fridge
FOR EACH ROW
BEGIN
    DECLARE v_days INT DEFAULT 7;

    SELECT c.default_days INTO v_days
    FROM Ingredient_Master im
    JOIN Category c ON im.category_id = c.category_id
    WHERE im.ingredient_id = NEW.ingredient_id;

    SET NEW.expire_date = DATE_ADD(NEW.add_date, INTERVAL v_days DAY);
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER trg_auto_stock_reduce
AFTER INSERT ON Cook_History
FOR EACH ROW
BEGIN
    -- 레시피가 요구하는 재료별 required_qty를, 같은 재료의 여러 보관 row(입고 배치)에
    -- 소비기한 임박 순(FIFO)으로 나눠서 "한 번만" 차감한다.
    -- deduct = LEAST(이 배치 보유량, MAX(필요량 − 앞 배치 누적, 0))
    -- user_quantity는 quantity 차감 비율만큼 함께 감소시킨다.
    UPDATE My_Fridge mf
    JOIN (
        -- 이중 서브쿼리: 윈도우 함수 사용 + My_Fridge를 UPDATE 대상이자 소스로 쓸 때
        -- 발생하는 MariaDB "target table in FROM" 에러 회피용 materialize
        SELECT fridge_item_id, deduct FROM (
            SELECT
                f.fridge_item_id,
                LEAST(
                    f.quantity,
                    GREATEST(
                        ri.required_qty - COALESCE(SUM(f.quantity) OVER (
                            PARTITION BY f.ingredient_id
                            ORDER BY f.expire_date, f.fridge_item_id
                            ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING
                        ), 0),
                        0
                    )
                ) AS deduct
            FROM My_Fridge f
            JOIN Recipe_Ingredient ri ON f.ingredient_id = ri.ingredient_id
            WHERE ri.recipe_id = NEW.recipe_id
        ) inner_calc
    ) calc ON mf.fridge_item_id = calc.fridge_item_id
    SET
        mf.user_quantity = CASE
            WHEN mf.quantity > 0
                THEN mf.user_quantity * (mf.quantity - calc.deduct) / mf.quantity
            ELSE 0
        END,
        mf.quantity = mf.quantity - calc.deduct;

    DELETE FROM My_Fridge
    WHERE quantity <= 0
        AND ingredient_id IN (
            SELECT ingredient_id FROM Recipe_Ingredient WHERE recipe_id = NEW.recipe_id
    );
END$$

DELIMITER ;
