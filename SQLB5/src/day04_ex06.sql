CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT DISTINCT pz.name AS pizzeria_name
FROM pizzeria pz 
JOIN menu m ON m.pizzeria_id = pz.id 
JOIN person_visits pv ON pv.pizzeria_id = pz.id 
JOIN person p ON pv.person_id = p.id 
WHERE p.name = 'Dmitriy' AND pv.visit_date = '2022-01-08' AND price < 800;

SELECT * from mv_dmitriy_visits_and_eats;