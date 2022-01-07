WITH regional_sales as (
    SELECT region_id,
           SUM(amount) as total_sales
    FROM db_cp.purchases
    GROUP BY region_id
),
     top_regions as (
         SELECT region_id
         FROM regional_sales
         ORDER BY total_sales desc
         LIMIT 20
     )
SELECT region,
       region_id,
       SUM(amount) as product_sales
FROM db_cp.purchases pu
         LEFT JOIN db_cp.regions r ON pu.region_id = r.id
         LEFT JOIN db_cp.products p ON pu.product_id = p.id
WHERE region_id IN (SELECT region_id FROM top_regions)
GROUP BY region, region_id;