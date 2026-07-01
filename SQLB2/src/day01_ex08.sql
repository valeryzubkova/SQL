SELECT
po.order_date, 
p.name || ' (age:' || p.age || ')' AS person_information
FROM person_order po
NATURAL JOIN (SELECT id AS person_id, name, age FROM person) AS p 
ORDER BY po.order_date ASC, person_information ASC;