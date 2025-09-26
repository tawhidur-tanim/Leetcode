
----select name from Employee where id in (
--select managerId from employee
--group by managerId
--having count(managerId) >= 5 
----)


select e.name from Employee e inner join (select managerId from employee
group by managerId
having count(managerId) >= 5 ) m
on e.id = m.managerId



