----- Group the orders by date and
-- calculate the average number of pizzas ordered per day.

SELECT round(avg(quantity), 0) AS avg_pizzas_ordered_per_day FROM
(SELECT orders.order_date, sum(order_details.quantity) AS quantity
FROM orders JOIN order_details
ON orders.order_id = order_details.order_id
GROUP BY orders.order_date) AS Orders_quantity;