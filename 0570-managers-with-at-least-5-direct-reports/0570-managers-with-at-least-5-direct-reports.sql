select
e.name
from Employee e
left join Employee e2
on e2.managerId = e.id
group by e.id, e.name
having count(e2.managerId) >= 5