SELECT SUM(price)               as total_sales,
       EXTRACT(month from date) as month
FROM db_cp.products p
         LEFT JOIN db_cp.purchases pu ON p.id = pu.product_id
         LEFT JOIN db_cp.customers c ON pu.user_id = c.id
WHERE date is not null
GROUP BY EXTRACT(month from date)
ORDER BY EXTRACT(month from date);