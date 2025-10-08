declare @totalUser decimal(18,6) 

set @totalUser = (select count(*) from users)

select contest_id, ROUND((count(*)/@totalUser)*100,2) [percentage] 

from 

Register

group by contest_id

order by [percentage] desc, contest_id asc