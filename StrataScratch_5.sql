--Find the date with the highest total energy consumption from the Meta/Facebook data centers.
--Output the date along with the total energy consumption across all data centers.

with unioned as (
    select * from fb_eu_energy
    union
    select * from fb_asia_energy
    union
    select * from fb_na_energy),

totals as (
    select date, sum(consumption) total_consumption
    from unioned
    group by date
    order by total_consumption desc)

select *
from totals
where total_consumption = (select max(total_consumption) from totals)