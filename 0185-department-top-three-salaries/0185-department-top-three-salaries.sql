-- Write your PostgreSQL query statement below
with salaries as
(
    select 
        d.name as Department,
        e.name as Employee,
        e.salary as Salary,
        dense_rank() over (partition by d.name order by e.salary desc) as d_rank
    from Employee e
        inner join Department d on d.id = e.departmentId
)
select
    Department, Employee, Salary
from salaries
    where d_rank <= 3