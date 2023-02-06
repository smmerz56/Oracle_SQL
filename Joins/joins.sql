--Natural joins can be used if the two joining tables have the 
--  same column name and data type...Dont need WHERE clause here
select department_id, department_name, location_id, city 
from departments
natural join locations
where department_id in(20, 50);

--Equi Join and USING clause
select last_name, department_id, department_name
from employees
join departments
using (department_id);
