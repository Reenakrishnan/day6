SELECT
    o.order_id,
    CONCAT('Order-', o.order_id) AS order_reference,
    o.order_date,
    DATEDIFF(CURDATE(), o.order_date) AS days_since_order
FROM orders o
LEFT JOIN payments p ON o.order_id = p.order_id
WHERE p.payment_id IS NULL;