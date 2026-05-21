-- identify the highest rated category in each branch 

with ss as 
(select branch,category,round(avg(rating),1)as average_rating ,
dense_rank() over(partition by branch order by avg(rating) desc ) as rnk
from walmartdata
group by branch,category) 
select * from ss
where rnk = 1