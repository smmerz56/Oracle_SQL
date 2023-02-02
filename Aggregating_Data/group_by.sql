--Group by single column
select is_active, count(*), min(begin_date), max(begin_date)
from banner_notif
where is_active is not null
group by is_active
order by min(begin_date);

--Group by multiple columns
select job_code, completed, count(*)
from alpaca
where completed is not null
group by job_code, completed
order by job_code;

--Group by multiple columns, changing completed column from number to varchar
select job_code, 
       case to_char(completed) 
          when to_char(1) then 'True'
          when to_char(0) then 'False'
       else to_char(completed) END "COMPLETED",
       count(*)
from alpaca
group by job_code, completed
order by job_code;
