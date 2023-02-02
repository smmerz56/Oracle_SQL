select count(*) from banner_notif;

select count(is_active)
from banner_notif
where is_active = 'T';

select count(distinct is_active)
from banner_notif;


