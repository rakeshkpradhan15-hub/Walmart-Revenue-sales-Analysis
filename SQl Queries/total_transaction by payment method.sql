-- finding number of transaction and no of quantity sold by each payment method?

select payment_method,count(*) as total_transaction,
sum(quantity) as total_quantity
from walmartdata
group by payment_method