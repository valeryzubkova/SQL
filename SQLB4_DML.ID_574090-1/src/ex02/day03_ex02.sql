SELECT 
m.pizza_name AS pizza_name,
m.price AS price,
pz.name AS pizzeria_name
FROM menu m 
JOIN pizzeria pz ON m.pizzeria_id = pz.id 
WHERE m.id NOT IN (
    SELECT DISTINCT menu_id 
    FROM person_order 
    WHERE menu_id IS NOT NULL
)
ORDER BY pizza_name, price, pizzeria_name;