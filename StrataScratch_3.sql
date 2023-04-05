--Classify each business as either a restaurant, cafe, school, or other.
--•	A restaurant should have the word 'restaurant' in the business name.
--•	A cafe should have either 'cafe', 'café', or 'coffee' in the business name.
--•	A school should have the word 'school' in the business name.
--•	All other businesses should be classified as 'other'.
--Output the business name and their classification.

select distinct business_name,
case
    when lower(business_name) like '%restaurant%' then 'restaurant'
    when lower(business_name) like '%cafe%' or lower(business_name) like '%café%' or lower(business_name) like '%coffee%' then 'cafe'
    when lower(business_name) like '%school%' then 'school'
    when lower(business_name) like '%restaurant%' then 'restaurant'
    else 'other'
    end as business_type
from sf_restaurant_health_violations;