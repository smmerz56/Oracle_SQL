--If the first value in the NVL function is null, then it returns
--  'No comission'. If not null, then it returns the string version
--  of comission.
select last_name, NVL(to_char(commission_pct), 'No commission') "Commission"
from employees;

--If first is not null, then return 'Manager'. If null, return No manager
select last_name, NVL2(to_char(manager_id),'Manager','No manager') "Manager"
from Employees;