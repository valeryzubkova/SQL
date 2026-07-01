/*
Session #1
SHOW transaction_isolation; проверка уровня изоляции (read committed)
1 BEGIN; начало транзакции
3 SELECT SUM(rating) FROM pizzeria; проверка суммы рейтинга пиццерий
6 SELECT SUM(rating) FROM pizzeria; проверка суммы рейтинга пиццерий (изменен после новой записи во 2 транзакции)
7 COMMIT; фиксация изменений для всех сессий
8 SELECT SUM(rating) FROM pizzeria; проверка рейтинга (изменение рейтинга, как во 2 транзакции)

Session #2
SHOW transaction_isolation; проверка уровня изоляции (read committed)
2 BEGIN; начало транзакции
4 INSERT INTO pizzeria (id, name, rating) VALUES (10, 'Kazan Pizza', 5); вставка новой записи в таблицу
5 COMMIT; фиксация изменений для всех сессий
9 SELECT SUM(rating) FROM pizzeria; проверка рейтинга 
*/