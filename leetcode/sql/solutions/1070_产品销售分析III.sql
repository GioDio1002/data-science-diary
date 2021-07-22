select product_id, year as first_year, quantity, price
from 
(
    select product_id, year, quantity, price,
    dense_rank() over (partition by product_id order by year) as rk from sales
) as t
where rk = 1
