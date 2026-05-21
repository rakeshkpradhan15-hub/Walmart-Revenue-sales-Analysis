-- total profit  by each category
select category ,
round(sum(total*profit_margin),2) as profit
from walmartdata
group by category
order by profit desc