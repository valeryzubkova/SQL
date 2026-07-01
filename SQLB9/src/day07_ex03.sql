WITH orders AS ( 
    SELECT pz.name,
    COUNT (*) AS order_count
    FROM person_order po 
    JOIN menu m ON po.menu_id = m.id
    JOIN pizzeria pz ON m.pizzeria_id = pz.id
    GROUP BY pz.name
),
visits AS ( 
    SELECT pz.name,
    COUNT (*) AS visit_count
    FROM person_visits pv 
    JOIN pizzeria pz ON pz.id = pv.pizzeria_id
    GROUP BY pz.name
 )
 SELECT
 COALESCE (o.name, v.name) AS name,
 COALESCE (o.order_count, 0) + COALESCE (v.visit_count, 0) AS total_count
 FROM orders o  
 FULL JOIN visits v ON o.name = v.name
 ORDER BY total_count DESC, name ASC;
;
