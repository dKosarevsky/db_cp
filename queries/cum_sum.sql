SELECT date,
       price,
       SUM(price) OVER (ORDER BY date) as total
FROM db_cp.products p
         LEFT JOIN db_cp.purchases pu ON p.id = pu.product_id
WHERE date is not null
ORDER BY date;