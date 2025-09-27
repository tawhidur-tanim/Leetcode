select a1.machine_id, Round(AVG(a2.timestamp - a1.timestamp),3) processing_time 

from 

Activity a1 inner join Activity a2

on a1.machine_id = a2.machine_id and a1.process_id = a2.process_id
and a1.activity_type = 'start' and a2.activity_type='end'

group by a1.machine_id



--select machine_id, process_id, 
-- MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time,
--    MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time 
--from Activity group by machine_id, process_id