-- categorize` sales into 3 groups morning ,afternoon ,evening and findout   total no of invoice

with sh as (select hour, 
case when hour < 12 then "morning"
	 when hour between 12 and 17  then "afternoon"
     else "evening"
end as shift 
from walmartdata)

select shift, count(*) as total_invoice 
from sh 
group by shift 
order by total_invoice desc