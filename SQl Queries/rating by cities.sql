-- list maximum , minimum, and average rating by cities

select city, category,max(rating) highest_rating ,min(rating) as minimum_rating ,
round(avg(rating),1) as average_rating 
from walmartdata
group by city,category
 