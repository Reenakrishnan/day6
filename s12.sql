SELECT
    COUNT(*) AS total_rows,
    COUNT(amount) AS non_null_count,
    SUM(amount) AS total_sum,
    AVG(amount) AS average_value
FROM (
    SELECT 100 AS amount
    UNION ALL
    SELECT 200
    UNION ALL
    SELECT NULL
) AS sample_data;