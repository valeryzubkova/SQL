SELECT 
m.pizza_name AS pizza_name,
pz.name AS pizzeria_name,
m.price AS price
FROM menu m 
FULL JOIN pizzeria pz ON m.pizzeria_id = pz.id 
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;    
