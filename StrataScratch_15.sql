--Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
--Output the revenue along with the customer id and sort the results based on the revenue in descending order.

select cust_id, sum(total_order_cost) revenue
from orders
where date(order_date) between '2019-03-01' and '2019-03-31'
group by cust_id
order by 2 desc;