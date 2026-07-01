SELECT
p.name,
COUNT(*) AS count_of_visits
FROM person_visits pv 
JOIN person p ON p.id = pv.person_id
GROUP BY p.id, p.name
HAVING COUNT (*) >3
ORDER BY count_of_visits DESC, p.name ASC;