**Задание 00**

Создай простой индекс **B-Tree** для каждого внешнего ключа в базе данных.

Имя каждого индекса должно соответствовать шаблону:

`idx_<имя_таблицы>_<имя_столбца>`

---

**Задание 01**

Напиши SQL-запрос, который возвращает:

- название пиццы;
- название пиццерии.

Убедись, что созданные индексы используются при выполнении запроса.

В качестве доказательства предоставь вывод команды `EXPLAIN ANALYZE`.

---

**Задание 02**

Создай функциональный индекс **B-Tree** с именем `idx_person_name` по столбцу `name` таблицы `person`.

Индекс должен хранить значения имени в верхнем регистре.

Предоставь любой SQL-запрос с выводом `EXPLAIN ANALYZE`, подтверждающим использование индекса `idx_person_name`.

---

**Задание 03**

Создай многоколоночный индекс **B-Tree** с именем `idx_person_order_multi` для оптимизации следующего запроса:

```sql
SELECT person_id, menu_id, order_date
FROM person_order
WHERE person_id = 8 AND menu_id = 19;
```

План выполнения (`EXPLAIN ANALYZE`) должен использовать `Index Only Scan`.

Предоставь любой SQL-запрос с выводом `EXPLAIN ANALYZE`, подтверждающим использование индекса `idx_person_order_multi`.

---

**Задание 04**

Создай уникальный индекс **B-Tree** с именем `idx_menu_unique` для таблицы `menu` по столбцам:

- `pizzeria_id`;
- `pizza_name`.

Предоставь любой SQL-запрос с выводом `EXPLAIN ANALYZE`, подтверждающим использование индекса `idx_menu_unique`.

---

**Задание 05**

Создай частично уникальный индекс **B-Tree** с именем `idx_person_order_order_date` для таблицы `person_order` по столбцам:

- `person_id`;
- `menu_id`.

Частичная уникальность должна действовать только для записей, где:

`order_date = '2022-01-01'`

План выполнения (`EXPLAIN ANALYZE`) должен использовать `Index Only Scan`.

---

**Задание 06**

Проанализируй следующий SQL-запрос и создай новый индекс **B-Tree** с именем `idx_1`, который уменьшит время его выполнения.

```sql
SELECT
    m.pizza_name AS pizza_name,
    max(rating) OVER (
        PARTITION BY rating
        ORDER BY rating
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS k
FROM menu m
INNER JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1, 2;
```

Предоставь доказательство улучшения производительности с помощью `EXPLAIN ANALYZE`.
