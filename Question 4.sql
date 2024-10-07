CREATE VIEW store_sales_view AS
SELECT 
    s.store_type, 
    o.total_sales,        
    o.pct_total_sales,    
    o.orders_count        
FROM dim_stores s
JOIN store_sales_summary o ON o.store_type = s.store_type
ORDER BY o.total_sales DESC;

SELECT * FROM store_detail_view;