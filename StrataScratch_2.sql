--Lyft Driver Wages
--Find all Lyft drivers who earn either equal to or less than 30k USD or equal to or more than 70k USD.
--Output all details related to retrieved records.

select index, start_date, end_date, yearly_salary
from lyft_drivers
where yearly_salary <= 30000 or yearly_salary >= 70000;