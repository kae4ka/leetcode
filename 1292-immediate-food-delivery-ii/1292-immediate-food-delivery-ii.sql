# Write your MySQL query statement below
with a as(
select
customer_id,
min(order_date) as date
from Delivery
group by customer_id)
select
round(sum(
case 
    when customer_pref_delivery_date = order_date then 1
    else 0
end)/count(order_date) * 100, 2) as immediate_percentage 
from Delivery d inner join a
on a.customer_id = d.customer_id
and a.date = d.order_date
