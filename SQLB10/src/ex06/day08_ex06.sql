/*
Session #1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ; установка уровня изоляции REPEATABLE READ
SHOW transaction_isolation; проверка уровня изоляции 
1 BEGIN; начало транзакции
3 SELECT SUM(rating) FROM pizzeria; проверка суммы рейтинга пиццерий
6 SELECT SUM(rating) FROM pizzeria; проверка суммы рейтинга пиццерий (такой же)
7 COMMIT; фиксация изменений для всех сессий
8 SELECT SUM(rating) FROM pizzeria; проверка рейтинга (изменение рейтинга, как во 2 транзакции)

Session #2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL REPEATABLE READ; установка уровня изоляции REPEATABLE READ
SHOW transaction_isolation; проверка уровня изоляции 
2 BEGIN; начало транзакции
4 INSERT INTO pizzeria (id, name, rating) VALUES (11, 'Kazan Pizza 2', 4); вставка новой записи в таблицу
5 COMMIT; фиксация изменений для всех сессий
9 SELECT SUM(rating) FROM pizzeria; проверка рейтинга 
*/