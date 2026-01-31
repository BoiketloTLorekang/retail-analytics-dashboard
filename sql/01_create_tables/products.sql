CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR (100),
category_id INT,
unit_price DECIMAL (10,2),
cost_price DECIMAL (10,2),

FOREIGN KEY (category_id) REFERENCES categories(category_id)
);