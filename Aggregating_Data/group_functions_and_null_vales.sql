--This will exclude any null values when calculating the avg
select avg(comission_pct)
from employees;

--This will make the null a 0 and calculate avg
select avg(nvl(comission_pct, 0))
from employees;


