CREATE DATABASE IF NOT EXISTS smart_fridge
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE smart_fridge;

CREATE TABLE Category (
    category_id          INT         AUTO_INCREMENT PRIMARY KEY,
    category_name        VARCHAR(50) NOT NULL,
    parent_id            INT         NULL,
    default_days         INT         DEFAULT 7,
    default_storage_type VARCHAR(10) NOT NULL DEFAULT '냉장',
    FOREIGN KEY (parent_id) REFERENCES Category(category_id)
);

CREATE TABLE Ingredient_Master (
    ingredient_id   INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_name VARCHAR(100) NOT NULL,
    category_id     INT          NOT NULL,
    base_unit       VARCHAR(20)  NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Unit_Conversion (
    conversion_id   INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_id   INT           NOT NULL,
    user_unit       VARCHAR(20)   NOT NULL,
    convert_to_base DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient_Master(ingredient_id)
);

CREATE TABLE My_Fridge (
    fridge_item_id  INT AUTO_INCREMENT PRIMARY KEY,
    ingredient_id   INT           NOT NULL,
    quantity        DECIMAL(10,2) NOT NULL,
    user_unit       VARCHAR(20)   NOT NULL,
    user_quantity   DECIMAL(10,2) NOT NULL,
    storage_type    VARCHAR(10)   NOT NULL DEFAULT '냉장',
    add_date        DATE          NOT NULL DEFAULT (CURRENT_DATE),
    expire_date     DATE          NULL,
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient_Master(ingredient_id)
);

CREATE TABLE Recipe (
    recipe_id      INT AUTO_INCREMENT PRIMARY KEY,
    recipe_name    VARCHAR(100) NOT NULL,
    difficulty     ENUM('easy', 'medium', 'hard') DEFAULT 'medium',
    estimated_time INT          NOT NULL,
    description    TEXT         NULL         
);

CREATE TABLE Recipe_Ingredient (
    recipe_ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id      INT           NOT NULL,
    ingredient_id  INT           NOT NULL,
    required_qty   DECIMAL(10,2) NOT NULL,
    unit           VARCHAR(20)   NOT NULL DEFAULT 'g',
    is_essential   BOOLEAN       NOT NULL DEFAULT TRUE,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient_Master(ingredient_id)
);

CREATE TABLE Cook_History (
    history_id   INT AUTO_INCREMENT PRIMARY KEY,
    recipe_id    INT      NOT NULL,
    cooked_at    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id)
);
