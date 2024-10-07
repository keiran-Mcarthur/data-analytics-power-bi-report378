SELECT s.store_type, s.country_region, p.category, SUM(p.sale_price) AS total_revenue
FROM orders_powerbi o
JOIN dim_products p ON o.product_code = p.product_code
JOIN dim_stores s ON o."Store Code" = s."store code"
WHERE EXTRACT(YEAR FROM CAST(o."Order Date" AS DATE)) = 2021
  AND s.country_region= 'Wiltshire'
  AND S.country_code = 'GB'
GROUP BY p.category, s.store_type, s.country_region
ORDER BY total_revenue DESC
LIMIT 1;