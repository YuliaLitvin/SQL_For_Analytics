--Find all wineries which produce wines by possessing aromas of plum, cherry, rose, or hazelnut.
--To make it more simple, look only for singular form of the mentioned aromas.

select distinct winery
from winemag_p1
where lower(description) ~ '\y(plum|cherry|rose|hazelnut)\y';