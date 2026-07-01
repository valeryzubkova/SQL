/*
Session #1
SHOW TRANSACTION ISOLATION LEVEL; проверка уровня изоляции
1 BEGIN; начало транзакции
3 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
5 UPDATE pizzeria SET rating = 4 WHERE name = 'Pizza Hut'; обновление рейтинга
7 COMMIT; фиксация изменений для всех сессий
9 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга


Session #2
SHOW TRANSACTION ISOLATION LEVEL; проверка уровня изоляции
2 BEGIN; начало транзакции
4 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
6 UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; обновление рейтинга (происходит после коммита в первой сессии)
8 COMMIT; фиксация изменений для всех сессий
10 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга после коммита 
*/
