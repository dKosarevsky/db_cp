SELECT p.name as product_name,
       p.price,
       pu.date,
       c.name as customer_name
FROM db_cp.products p
         LEFT JOIN db_cp.purchases pu ON p.id = pu.product_id
         LEFT JOIN db_cp.customers c ON pu.user_id = c.id
WHERE date is not null;