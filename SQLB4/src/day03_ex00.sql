SELECT 
m.pizza_name AS pizza_name,
m.price AS price,
pz.name AS pizzeria_name,
pv.visit_date AS visit_date
FROM menu m 
JOIN pizzeria pz ON m.pizzeria_id = pz.id 
JOIN person_visits pv ON pv.pizzeria_id = pz.id 
JOIN person p ON pv.person_id = p.id 
WHERE p.name = 'Kate' AND price BETWEEN 800 AND 1000
ORDER BY pizza_name, price, pizzeria_name;
