--In this case AND or Where can be used to specify location_id
select d.department_name, l.location_id, l.city
from departments d
join locations l
on d.location_id = l.location_id
and l.location_id = 1700;

select d.department_name, l.location_id, l.city
from departments d
join locations l
on d.location_id = l.location_id
where l.location_id = 1700;