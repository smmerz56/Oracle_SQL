select is_active, round(avg(notification_id),0) "Average", sum(notification_id) "SUM"
from banner_notif
where is_active is not null
group by is_active
order by is_active;

select min(banner_notification), max(banner_notification)
from banner_notif;


