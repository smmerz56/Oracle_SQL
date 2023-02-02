--WHERE clause restricts rows
--HAVING clause restricts groups

--This example had a time_stamp stored as a string...Dont judge it was my first table
select job_code, max(to_date(substr(time_stamp, 1, 10), 'YYYY-MM-DD')) as "DATE"
from alpaca
group by job_code
having max(to_date(substr(time_stamp, 1, 10), 'YYYY-MM-DD')) >= to_date('2022-11-14', 'YYYY-MM-DD')
order by "DATE";