select * from orders;
-- List all orders for a specific customer.
select count(o_id) as total_order from orders
where c_id = '10';

-- Show orders placed in the last 7 days.
select count(o_id) as total_order from orders
where o_date >= current_date() - interval 7 day;

-- Calculate the total order amount per day.
select o.o_date, round(sum(pay.pay_amount), 2) as per_day_order_Amount from orders o
join payment pay 
on o.o_id = pay.o_id
group by o.o_date
order by o.o_date;















