--Find the average total compensation based on employee titles and gender.
--Total compensation is calculated by adding both the salary and bonus of each employee.
--However, not every employee receives a bonus so disregard employees without bonuses in your calculation.
--Employee can receive more than one bonus.
--Output the employee title, gender (i.e., sex), along with the average total compensation.

select a.employee_title, a.sex, avg(a.salary + b.tot_bonus) as avg_comp
from sf_employee as a
inner join
(select worker_ref_id, sum(bonus) as tot_bonus from sf_bonus group by worker_ref_id having sum(bonus) > 0) as b
on a.id = b.worker_ref_id
group by 1,2