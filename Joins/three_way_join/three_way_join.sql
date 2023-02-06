--Both statements return the same data
select employee_id, city, department_name
from employee e
join departments d
on d.department_id = e.dapartment_id
join locations l
on d.location_id = l.location_id;

select e.employee_id, l.city, d.department_name
from employee e
join departments d
using (department_id)
join locations l
using (location_id);

--
select d.department_name, l.city, c.country_name
from departments d
join locations l
using (location_id)
join countries c
using(country_id);