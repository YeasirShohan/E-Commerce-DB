use ecommerce_dba;
-- Display all available products.
select * from product;

-- Find products with price less than 100.
select * from product
where p_price<=100;

-- List top 5 best-selling products.--
select p.p_id, sum(oi.oi_quantity) as total_sold from product p
join order_item oi on p.p_id = oi.p_id 
group by p.p_id
order by total_sold desc
limit 5;

-- Find products never sold.
select oi.p_id from product p
right join order_item oi
on p.p_id = oi.p_id
where oi.p_id is null
group by oi.p_id; 

-- Group products by category and count how many are in each.
select p_category, count(p_category) as total from product
group by p_category
order by total asc;














 

