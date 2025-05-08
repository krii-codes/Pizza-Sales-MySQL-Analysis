## Determine the distribution of orders by hour of the day.

SELECT hour(order_time) AS "Hour of the day",
 count(order_id) AS Orders_count 
FROM orders
group by hour(order_time);