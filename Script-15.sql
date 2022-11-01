/* 10.1 */
use sakila;
select c.customer_id, c.first_name, sum(p.amount)
from customer c
left outer join payment p
on c.customer_id = p.customer_id
group by c.customer_id;
/* 10.2 */
use sakila;
select c.customer_id, c.first_name, sum(p.amount)
from payment p
right outer join customer c 
on c.customer_id = p.customer_id
group by c.customer_id;
/* 1 запрос - вывести сумму продаж каждого продавца, даже если она равна 0*/
use gorodskaya_biblioteka;
select p.id_prodavca, p.fio_prodavca, sum(p2.summa)
from prodavcy p
left outer join prodazhy p2
on p2.id_prodavca = p.id_prodavca
group by p.id_prodavca
order by p.id_prodavca asc;
/* 2 запрос - вывести сумму, на которую продали каждую книгу, даже если она равна 0*/
use gorodskaya_biblioteka;
select k.id_knigi, k.nazvanie, k.cena, sum(p.summa)
from katalog k
left outer join prodazhy p
on p.id_knigi = k.id_knigi
group by k.id_knigi
order by k.id_knigi asc;

