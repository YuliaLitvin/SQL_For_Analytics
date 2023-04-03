--Find the review_text that received the highest number of  'cool' votes.
--Output the business name along with the review text with the highest numbef of 'cool' votes.

select distinct business_name, review_text
from yelp_reviews
where cool = (select max(cool) from yelp_reviews);