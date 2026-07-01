SELECT 
m.id AS menu_id
FROM menu m
WHERE m.id NOT IN (
    SELECT DISTINCT menu_id 
    FROM person_order 
    WHERE menu_id IS NOT NULL
)
ORDER BY menu_id;