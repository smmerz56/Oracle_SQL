--Ordered by country_name, then location_id
select c.country_name, l.country_id, c.country_id, l.location_id
from locations l
JOIN countries c
ON l.country_id = c.country_id
order by c.country_name, l.location_id;