SELECT TO_CHAR(CAST(o."Order Date" AS DATE), 'Month') AS month, SUM(p.sale_price) AS total_revenue
FROM orders_powerbi o
JOIN dim_products p ON o.product_code = p.product_code
WHERE EXTRACT(YEAR FROM CAST(o."Order Date" AS DATE)) = 2022
GROUP BY TO_CHAR(CAST(o."Order Date" AS DATE), 'Month'), EXTRACT(MONTH FROM CAST(o."Order Date" AS DATE))
ORDER BY total_revenue DESC
LIMIT 1;