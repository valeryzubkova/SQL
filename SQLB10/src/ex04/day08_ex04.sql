/*
Session #1
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE; устновка уровня изоляции (SERIALIZABLE)
SHOW transaction_isolation; проверка уровня изоляции
1 BEGIN; начало транзакции
3 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
6 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга (такой же рейтинг)
7 COMMIT; фиксация изменений для всех сессий
8 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга (изменение рейтинга, как во 2 транзакции)

Session #2
SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SHOW TRANSACTION ISOLATION LEVEL; проверка уровня изоляции 
2 BEGIN; начало транзакции
4 UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut'; обновление рейтинга 
5 COMMIT; фиксация изменений для всех сессий
9 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга после коммита 
*/
