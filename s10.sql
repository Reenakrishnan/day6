SELECT
    o.order_date,
    ROUND(SUM(p.price * oi.quantity), 2) AS daily_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_date
ORDER BY daily_sales DESC
LIMIT 1;