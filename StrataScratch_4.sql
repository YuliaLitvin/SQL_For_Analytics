--Find the top business categories based on the total number of reviews.
--Output the category along with the total number of reviews. Order by total reviews in descending order.

with df_1 as (select unnest(string_to_array(categories, ';')) as category, review_count from yelp_business)
select category, sum(review_count) as review_cnt
from df_1
group by category
order by review_cnt DESC