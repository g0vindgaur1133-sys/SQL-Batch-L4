use sakila;

select customer_id, count(payment_id) from payment 

where amount>3 group by customer_id;

select * from payment;

select customer_id, count(payment_id) from payment
where amount>3 group by customer_id;

select amount, count(*) from payment
where month(payment_date)=5 group by amount;

-- you need to find out the maximum amount spend the average amount spend and the total amount spend for each stuff
select staff_id,  max(amount), avg(amount), sum(amount) from payment group by staff_id;

-- you need to find out the maximum amount spend the average amount spend and the total amount spend for each stuff only for the customer id one three seven eleven
select staff_id,  max(amount), avg(amount), sum(amount) from payment where customer_id in (1,3,7,11) group by staff_id;

-- find the total amount spend the number of customer done of the payment in each month where the amount spend greater than 1 dollar
-- total amount, number of customer
-- for each month
-- amount>1 (done)
select month(payment_date), sum(amount), count(customer_id)
from payment where amount>1
group by month(payment_date)
having count(customer_id)>300;

select year(payment_date), month(payment_date), count(customer_id)
from payment group by year(payment_date), month(payment_date);



