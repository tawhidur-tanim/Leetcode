select query_name
, Round(sum(rating / (position*1.0)) / count(*),2) quality
, Round((sum(case when rating < 3 then 1.00 else 0 end) / count(*)) * 100.00 ,2) poor_query_percentage 

from 

Queries

group by query_name