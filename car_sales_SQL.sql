select * from car_sales_data;
select sum(total_price) AS Total_revenue from car_sales_data;
select sum(total_price) / count(distinct order_id )   AS  average_ordervalue from car_sales_data;
select sum(quantity) AS total_cars_sold from car_sales_data;
select count(distinct order_id) as total_orders from car_sales_data;
select sum(quantity)/ count(distinct order_id) As average_cars_perorder from car_sales_data;

SELECT DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS weekday,
COUNT(DISTINCT order_id) AS total_orders
FROM car_sales_data
GROUP BY weekday
ORDER BY FIELD(weekday, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');

SELECT 
    MONTHNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS month_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM car_sales_data
GROUP BY 
    MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')),
    month_name
ORDER BY 
    MONTH(STR_TO_DATE(order_date, '%Y-%m-%d'));

select car_type, sum(total_price)*100/(select sum(total_price)from car_sales_data) AS pct
from car_sales_data
group by car_type;

select car_type,sum(total_price) as total_sales ,sum(total_price)*100/(select sum(total_price) from car_sales_data) AS PCT
from car_sales_data
group by car_type;

select car_segment,sum(total_price) as total_sales ,sum(total_price)*100/(select sum(total_price) from car_sales_data) AS PCT
from car_sales_data
group by car_segment
order by PCT Desc;

select  car_model_id,sum(total_price)AS Total_revenue from car_sales_data
group by car_model_id
order by Total_revenue desc;

select  car_model_id,sum(total_price)AS Total_revenue from car_sales_data
group by car_model_id
order by Total_revenue desc limit 5;

select  car_model_id,sum(total_price)AS Total_revenue from car_sales_data
group by car_model_id
order by Total_revenue ASC limit 5;

select  car_model_id,sum(quantity)AS Total_Quantity from car_sales_data
group by car_model_id
order by Total_Quantity desc limit 5;

select  car_model_id,sum(quantity)AS Total_Quantity from car_sales_data
group by car_model_id
order by Total_Quantity ASC limit 5;

select car_model_id,count(distinct order_id)As Total_orders From car_sales_data
group by car_model_id
order by Total_orders DESC limit 5;

select car_model_id,count(distinct order_id)As Total_orders From car_sales_data
group by car_model_id
order by Total_orders ASC limit 5;

