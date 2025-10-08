select project_id,	ROUND(AVG(experience_years*1.0),2) average_years 

from Project p inner join Employee e 
on p.employee_id = e.employee_id

group by project_id

