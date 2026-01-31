CREATE VIEW customer_order_frequency AS
SELECT
    customer_id,
    COUNT(order_id) AS order_count,
    CASE
        WHEN COUNT(order_id) > 1 THEN 'Repeat Customer'
        ELSE 'One-Time Customer'
    END AS customer_type
FROM orders
GROUP BY customer_id;
