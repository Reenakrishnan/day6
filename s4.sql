SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
    ROUND(SUM(p.price * oi.quantity), 2) AS monthly_sales
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY sales_month;