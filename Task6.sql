select * from sales_data_cleaned;
SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    sales_data_cleaned
GROUP BY 
    YEAR(order_date), 
    MONTH(order_date)
ORDER BY 
    order_year, order_month;