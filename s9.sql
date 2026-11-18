SELECT
    p.category,
    ROUND(SUM(p.price * oi.quantity), 2) AS category_revenue,
    ROUND(
        SUM(p.price * oi.quantity) * 100 /
        (SELECT SUM(pr.price * oi2.quantity)
         FROM products pr
         JOIN order_items oi2 ON pr.product_id = oi2.product_id),
        2
    ) AS revenue_percentage
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.category;