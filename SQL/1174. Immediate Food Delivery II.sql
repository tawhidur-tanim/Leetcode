with cte as (
	select customer_id, min(order_date)order_date

	from Delivery

	group by customer_id
)
, cte2 as (

select d.* from 

Delivery d inner join cte on d.customer_id = cte.customer_id 
and d.order_date = cte.order_date


)

select cast((100.00 * sum(case when order_date = customer_pref_delivery_date then 1 else 0 end))/count(*) as decimal(18,2))immediate_percentage  

from cte2



