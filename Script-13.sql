use sakila;
/* 8.1 */
select count(*) num_rows from payment;
/* 8.2 */
select p.customer_id, sum(p.amount) 
from payment p
group by p.customer_id;
/* 8.3 */
select p.customer_id, sum(p.amount)
from payment p
group by p.customer_id
having count(*) >= 40;
