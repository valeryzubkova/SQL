/*
Session #1
SHOW TRANSACTION ISOLATION LEVEL; проверка уровня изоляции (read committed)
1 BEGIN; начало транзакции
3 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
6 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга (НЕПОВТОРЯЮЩЕЕСЯ ЧТЕНИЕ: разный рейтинг)
7 COMMIT; фиксация изменений для всех сессий
8 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга

Session #2
SHOW TRANSACTION ISOLATION LEVEL; проверка уровня изоляции (read committed)
2 BEGIN; начало транзакции
4 UPDATE pizzeria SET rating = 3.6 WHERE name = 'Pizza Hut'; обновление рейтинга 
5 COMMIT; фиксация изменений для всех сессий
9 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга после коммита 
*/
