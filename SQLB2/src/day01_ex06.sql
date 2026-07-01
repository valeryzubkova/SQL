SELECT 
    action_date,
    person.name AS person_name
FROM (
    SELECT order_date AS action_date, person_id
    FROM person_order
    INTERSECT
    SELECT visit_date AS action_date, person_id
    FROM person_visits
) AS combined_data
JOIN person ON person.id = combined_data.person_id
ORDER BY action_date ASC, person_name DESC;