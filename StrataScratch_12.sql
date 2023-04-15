--Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
--Output the host id and the guest id of matched pair.

select distinct host_id, guest_id
from airbnb_hosts join airbnb_guests using(nationality)
where airbnb_hosts.gender = airbnb_guests.gender;