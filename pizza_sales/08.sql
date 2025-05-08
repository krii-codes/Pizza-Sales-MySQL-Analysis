## Join relevant tables to find the category-wise distribution of pizzas.





SELECT category, count(name) AS "number of pizzas"
FROM pizza_types
GROUP BY category;