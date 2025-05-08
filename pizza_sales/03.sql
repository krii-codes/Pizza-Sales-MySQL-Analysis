## Identify the highest-priced pizza.
SELECT pizza_types.name,pizzas.price FROM
pizza_types join pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY price DESC limit 1;