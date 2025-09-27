select 
signups.user_id
,cast(sum(case when action = 'confirmed' then 1.0 else 0 end)/count(*) as decimal(10,2)) confirmation_rate  

from 

Signups left outer join Confirmations

on Signups.user_id = Confirmations.user_id

group by signups.user_id
