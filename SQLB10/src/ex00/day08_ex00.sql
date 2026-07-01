/*
Session #1
1 BEGIN; начало транзакции
3 UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut'; обновление рейтинга
4 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
6 COMMIT; фиксация изменений для всех сессий

Session #2
2 BEGIN;
5 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга
7 SELECT * FROM pizzeria WHERE name = 'Pizza Hut'; проверка рейтинга после коммита в первой сессии
*/


