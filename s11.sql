SELECT
    COUNT(*) AS total_rows,
    COUNT(payment_amount) AS non_null_payments,
    SUM(payment_amount) AS total_payment,
    AVG(payment_amount) AS average_payment
FROM payments;