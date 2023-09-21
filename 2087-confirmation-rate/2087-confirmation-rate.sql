# Write your MySQL query statement below
with a as (
select
s.user_id,
count(
case
  when c.action = 'confirmed' then 1
  else 0
end) as actions,
sum(
case
  when c.action = 'confirmed' then 1
  else 0
end) as signups
from Signups s
left join Confirmations c
using (user_id)
group by s.user_id)
select
user_id,
round(signups/actions, 2) as 'confirmation_rate'
from a