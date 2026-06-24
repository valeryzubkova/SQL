CREATE VIEW v_price_with_discount AS
SELECT p.name AS name, 
m.pizza_name AS pizza_name, 
m.price AS price, 
(m.price - m.price * 0.1)::integer AS discount_price 
FROM menu m 
JOIN person_order po ON po.menu_id = m.id
JOIN person p ON po.person_id = p.id
ORDER BY name, pizza_name;