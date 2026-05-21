-- find most common payment method by each branch
 
with tt as(
select branch , payment_method ,count(payment_method) as total_transaction,
rank()over(partition by branch order by count(payment_method) desc) as rnk
from walmartdata
group by branch,payment_method)
 select * from tt 
 where rnk = 1