-- Customer Queries
-- Retrieve all customers.
select * from customer;

-- Find customers who haven't placed any orders.
select c.c_id, c.c_name from customer c 
join orders o on c.c_id = o.c_id
where c.c_id not in (select o.c_id from orders o)
order by c.c_id asc;

-- Find customers who have placed any orders.
select c.c_id, c.c_name from customer c
inner join orders o on c.c_id = o.c_id;

-- how many orders each customer has placed
 select c.c_id, c.c_name, count(o.o_id) as total_order from customer c
 join orders o on c.c_id = o.c_id
 group by c.c_id;

-- List customers who ordered more than 3 times in the last month.
SELECT c.c_id, c.c_name, COUNT(o.o_id) AS total_order
FROM customer c
JOIN orders o ON c.c_id = o.c_id
WHERE o.o_date >= CURDATE() - INTERVAL 30 DAY
GROUP BY c.c_id
HAVING total_order > 3
order by c.c_id asc;

-- Show top 5 most active customers by total spending.
SELECT c.c_id, c.c_name, pay.pay_amount
FROM customer c
JOIN orders o ON c.c_id = o.c_id
JOIN payment pay ON pay.o_id = o.o_id
WHERE pay.pay_amount = (
    SELECT MAX(pay_amount)
    FROM payment
);










