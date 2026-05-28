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
    -- user_quantity는 quantity 차감 비율만큼 함께 감소시킨다.
    -- MariaDB는 SET 절을 좌→우 순서로 평가하므로 user_quantity를 quantity보다 먼저 계산해야 한다.
    UPDATE My_Fridge mf
    JOIN Recipe_Ingredient ri
        ON mf.ingredient_id = ri.ingredient_id
    SET
        mf.user_quantity = CASE
            WHEN mf.quantity > 0
                THEN mf.user_quantity * GREATEST(mf.quantity - ri.required_qty, 0) / mf.quantity
            ELSE 0
        END,
        mf.quantity = mf.quantity - ri.required_qty
    WHERE ri.recipe_id = NEW.recipe_id;

    DELETE FROM My_Fridge
    WHERE quantity <= 0
        AND ingredient_id IN (
            SELECT ingredient_id FROM Recipe_Ingredient WHERE recipe_id = 				NEW.recipe_id
    );
END$$

DELIMITER ;
