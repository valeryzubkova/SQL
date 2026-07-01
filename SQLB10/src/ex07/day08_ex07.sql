/*
Session #1
1 BEGIN; начало транзакции
3 UPDATE pizzeria SET rating = 4.0 WHERE id = 1; изменение ретинга пиццерии с id1
5 UPDATE pizzeria SET rating = 4.5 WHERE id = 2; изменение ретинга пиццерии с id2 (подвиснет, тк с ней работает вторая сессия)
7 COMMIT; фиксация изменений для всех сессий (произойдет)


Session #2
2 BEGIN; начало транзакции
4 UPDATE pizzeria SET rating = 4.0 WHERE id = 2; изменение ретинга пиццерии с id2
6 UPDATE pizzeria SET rating = 4.5 WHERE id = 1; изменение ретинга пиццерии с id1 (выдаст ошибку ERROR:  deadlock detected)
8 COMMIT; фиксация изменений для всех сессий (выдаст ROLLBACK)
*/