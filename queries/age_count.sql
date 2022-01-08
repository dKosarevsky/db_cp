SELECT date_part('year', age(birth_date)) as age,
       COUNT(*)                           as count
FROM db_cp.managers
GROUP BY age
ORDER BY count desc;