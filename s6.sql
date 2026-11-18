SELECT
    c.city,
    ROUND(AVG(order_total), 2) AS average_basket_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN (
    SELECT
        oi.order_id,
        SUM(p.price * oi.quantity) AS order_total
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY oi.order_id
) AS order_summary ON o.order_id = order_summary.order_id
GROUP BY c.city;