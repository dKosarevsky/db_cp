WITH cte as (SELECT extract(isodow from pu.date) day_of_week,
                    SUM(p.price) as              total_sales
             FROM db_cp.products p
                      LEFT JOIN db_cp.purchases pu ON p.id = pu.product_id
             WHERE date is not null
             GROUP BY day_of_week
             ORDER BY total_sales desc)
SELECT total_sales,
       CASE
           WHEN day_of_week = 1 THEN 'Понедельник'
           WHEN day_of_week = 2 THEN 'Вторник'
           WHEN day_of_week = 3 THEN 'Среда'
           WHEN day_of_week = 4 THEN 'Четверг'
           WHEN day_of_week = 5 THEN 'Пятница'
           WHEN day_of_week = 6 THEN 'Суббота'
           WHEN day_of_week = 7 THEN 'Воскресенье'
           ELSE 'Неизвестный день'
           END
FROM cte;
