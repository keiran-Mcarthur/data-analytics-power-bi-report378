SELECT s.store_type, SUM(p.sale_price) AS total_revenue
FROM orders_powerbi o
JOIN dim_products p ON o.product_code = p.product_code
JOIN dim_stores s ON o."Store Code" = s."store code"
WHERE EXTRACT(YEAR FROM CAST(o."Order Date" AS DATE)) = 2022
  AND s.country_code = 'DE'
GROUP BY s.store_type
ORDER BY total_revenue DESC
LIMIT 1;