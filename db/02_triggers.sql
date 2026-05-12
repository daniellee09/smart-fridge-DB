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

    SET NEW.expire_date = DATE_ADD(CURRENT_DATE, INTERVAL v_days DAY);
END$$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER trg_auto_stock_reduce
AFTER INSERT ON Cook_History
FOR EACH ROW
BEGIN
    UPDATE My_Fridge mf
    JOIN Recipe_Ingredient ri
        ON mf.ingredient_id = ri.ingredient_id
    SET mf.quantity = mf.quantity - ri.required_qty
    WHERE ri.recipe_id = NEW.recipe_id;

    DELETE FROM My_Fridge
    WHERE quantity <= 0
        AND ingredient_id IN (
            SELECT ingredient_id FROM Recipe_Ingredient WHERE recipe_id = 				NEW.recipe_id
    );
END$$

DELIMITER ;
