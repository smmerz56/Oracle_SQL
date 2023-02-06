--Because we use location_id in the using clause, we cant prefix it
--  with the alias in the where clause
select l.city, d.department_name
from locations l
join departments d
using (location_id)
where location_id = 1400;
