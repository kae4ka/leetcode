# Write your MySQL query statement below
with Salaries as (
  select
  departmentId,
  max(salary) as salary
  from Employee e
  group by departmentId
)
select
d.name as Department,
e.name as Employee,
s.salary as Salary
from Employee e
inner join Department d
on e.departmentId = d.id
inner join Salaries s
on s.departmentId = e.departmentId
   and s.salary = e.salary