INSERT INTO person_order (id, person_id, menu_id, order_date) 
SELECT (SELECT MAX(id) from person_order) + gs, 
p.id, m.id, '2022-02-25' 
FROM generate_series(1, (select count(*) from person)) AS gs 
JOIN person p on gs = p.id 
JOIN menu m on m.pizza_name = 'greek pizza';

SELECT count(*) = 9 AS CHECK
 FROM person_order
 WHERE order_date = '2022-02-25'
   AND menu_id =
     (SELECT id
     FROM menu
     WHERE pizza_name = 'greek pizza')