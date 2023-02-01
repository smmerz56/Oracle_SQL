select last_name, to_char(hire_date, 'DD-MON-yyyy')
from employees
where to_date(hire_date, 'DD-Mon-RR') < '01-Jan-96';
--This will not work if using the YY format in the WHERE clause 
--  because it assumes the current century