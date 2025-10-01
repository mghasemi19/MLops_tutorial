-- SHOW DATABASE;
-- USE pet_shop;
-- CREATE TABLE pastries (first_name VARCHAR(50) NOT NULL,
						-- quantity INT NOT NULL);
-- SHOW TABLES;
-- INSERT INTO pastries(first_name, quantity)
-- VALUES ("Mohsen", 40), ("Meisam", 35), ("Ehsan", 43);
-- VALUES ("Meisam", 35);
-- DESC pastries;
-- SELECT * FROM pastries;
-- DROP TABLE pastries;

-- CREATE TABLE unique_cats3 (
-- cat_id INT AUTO_INCREMENT,
-- name VARCHAR(100),
-- age INT,
-- PRIMARY KEY (cat_id)
-- );
-- INSERT INTO unique_cats3(name, age)
-- VALUES ("Mohsen", 40), ("Meisam", 35), ("Ehsan", 43)
-- SELECT * FROM unique_cats3;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);
-- A test INSERT:



INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);
