USE retail_sales;

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity,
    ROUND(SUM(p.price * oi.quantity), 2) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC
LIMIT 5;