SELECT
    UPPER(c.customer_name) AS customer_name,
    c.city,
    c.join_date
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;