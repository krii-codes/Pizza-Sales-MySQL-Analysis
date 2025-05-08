-- Analyze the cumulative revenue generated over time.
SELECT Sales.order_date, sum(revenue) over(order by order_date) AS "Cumulative Revenue"
FROM
(
SELECT orders.order_date, sum(order_details.quantity * pizzas.price) AS revenue
FROM order_details JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id JOIN orders ON
orders.order_id = order_details.order_id
GROUP BY orders.order_date
) AS Sales;