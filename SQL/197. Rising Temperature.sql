--select id from Weather w1

--where temperature > (select temperature
--from Weather where recordDate = DATEADD(day, -1, w1.recordDate))

--;with cte
--as
--(
--select id, recordDate, temperature, LAG(temperature) over(order by recordDate) prevTemp
--,LAG(recordDate) over(order by recordDate) prevDate

--from Weather
--)

--select id, recorddate, prevdate, DATEDIFF(day, prevDate, recordDate) from cte
--where temperature > prevTemp and DATEADD(day, -1, recordDate) = prevDate


select *

from Weather w1 left join Weather w2

on DATEDIFF(day, w1.recordDate, w2.recordDate) = -1

--or DATEDIFF(day, w1.recordDate, w2.recordDate) = -1

where w1.temperature > w2.temperature
