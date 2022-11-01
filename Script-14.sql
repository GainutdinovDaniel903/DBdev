/* 9.1 */
use sakila;
select f.film_id, f.title from film f 
where f.film_id in (select fc.film_id from film_category fc
inner join category c 
on fc.category_id = c.category_id
where c.name = 'Action');
/* 9.2 */
use sakila;
select f.film_id, f.title
from film f
inner join film_category fc
on fc.film_id = f.film_id
inner join category c
on c.category_id = fc.category_id 
where fc.category_id in (select c.category_id where c.name = 'Action');
/* Запрос к проекту - вывести id и ФИО продавцов, продавших одну или несколько книг стоимостью больше 500р */
use gorodskaya_biblioteka;
select p.id_prodavca, p2.fio_prodavca
from prodazhy p
inner join prodavcy p2
on p.id_prodavca = p2.id_prodavca
where p.id_knigi in (select k.id_knigi from katalog k where k.cena > 500)
group by p.id_prodavca
order by p.id_prodavca asc;



