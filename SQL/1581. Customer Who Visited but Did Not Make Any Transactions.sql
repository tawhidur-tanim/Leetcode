select customer_id, count(*)count_no_trans  from 

visits left join Transactions

on Visits.visit_id = Transactions.visit_id

where transaction_id is null

group by customer_id

order by customer_id
