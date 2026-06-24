DROP TABLE IF EXIST tours;

CREATE TABLE tours
(
   point_1 VARCHAR(1),
   point_2 VARCHAR(1),
   cost INTEGER
);

INSERT INTO tours (point_1, point_2, cost)
VALUES
    ('a', 'b', 10),
    ('a', 'c', 15),
    ('a', 'd', 20),
    ('b', 'a', 10),
    ('b', 'c', 35),
    ('b', 'd', 25),
    ('c', 'a', 15),
    ('c', 'b', 35),
    ('c', 'd', 30),
    ('d', 'a', 20),
    ('d', 'b', 25),
    ('d', 'c', 30);

WITH RECURSIVE path_finder AS (
   SELECT 
   point_1,
   point_2,
   cost AS total_cost,
   ARRAY[point_1, point_2]::VARCHAR[] AS tour
   CASE
   WHEN point_2 = 'a' THEN 1
   ELSE 0
   END AS is_complete
   FROM tours
   WHERE point_1 = 'a'
)

UNION ALL

SELECT 