CREATE INDEX idx_menu_unique ON menu(pizzeria_id, pizza_name);

SET enable_seqscan = OFF;

SET enable_seqscan = ON;

DROP INDEX IF EXISTS idx_menu_unique;

EXPLAIN ANALYZE
SELECT pizzeria_id, pizza_name
FROM menu
WHERE pizza_name = 'cheese pizza'
ORDER BY pizzeria_id;