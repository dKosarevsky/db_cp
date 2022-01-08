SELECT date_part('year', age(birth_date)) as age,
       avg(salary)::int                   as salary_avg
FROM db_cp.managers
GROUP BY age
HAVING avg(salary)::int >= {salary}
ORDER BY salary_avg desc;