CREATE TABLE orders (
order_id INT PRIMARY KEY,
customer_id INT,
store_id INT,
order_date DATE,
payment_method VARCHAR(50),

FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(store_id) REFERENCES stores(store_id),
);