CREATE VIEW store_performance AS
SELECT
    s.store_id,
    s.store_name,
    s.city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM stores s
JOIN orders o
    ON s.store_id = o.store_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY
    s.store_id,
    s.store_name,
    s.city;
