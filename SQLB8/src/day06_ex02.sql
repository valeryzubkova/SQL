SELECT
p.name AS name,
m.pizza_name AS pizza_name,
m.price AS price,
ROUND(m.price - ((m.price/100)*pd.discount), 2) AS discount_price,
pz.name AS pizzeria_name
FROM person p 
JOIN person_discounts pd ON pd.person_id = p.id
JOIN pizzeria pz ON pz.id = pd.pizzeria_id
JOIN menu m ON pz.id = m.pizzeria_id
ORDER BY p.name, m.pizza_name;