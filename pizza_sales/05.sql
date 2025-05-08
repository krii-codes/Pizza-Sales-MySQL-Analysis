 ## List the top 5 most ordered pizza types along with their quantities.

SELECT pizzas.pizza_type_id, SUM(order_details.quantity) AS total_orders
FROM pizzas join order_details 
ON pizzas.pizza_id = order_details.pizza_id
group by pizzas.pizza_type_id
ORDER BY total_orders desc limit 5;
