--Returns the first non-null value in the list or 'null' is all null
select coalesce(to_char(begin_date), to_char(end_date), 'No date') as "DATE"
from banner_notif;