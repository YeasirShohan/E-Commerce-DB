select * from payment;

-- Calculate total amount for the current month.
select round(sum(pay_amount),2) as total from payment
where pay_date <= curdate() - interval 30 day;

-- Summarize payments by payment method
select pay_method ,count(pay_method) as total from payment
group by pay_method;
