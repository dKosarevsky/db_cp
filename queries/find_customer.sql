select *
from db_cp.customers
where 1 = 1
  and name ~*'{name}'
  and age between {age_from} and {age_to};