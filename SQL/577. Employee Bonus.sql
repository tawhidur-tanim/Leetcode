select name, bonus

from Employee left outer join Bonus

on Employee.empId = Bonus.empId

where bonus.bonus < 1000 or bonus.bonus is null