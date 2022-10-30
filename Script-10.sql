/* 5.1 */
use sakila;
SELECT c.first_name, c.last_name, a.address, ct.city
FROM customer c
INNER JOIN address a
ON c.address_id = a.address_id
INNER JOIN city ct
ON a.city_id = ct.city_id
WHERE a.district = 'California';
/* 5.2 */
use sakila;
select f.title
from film f
inner join film_actor fa
on f.film_id = fa.film_id
inner join actor a
on a.actor_id = fa.actor_id
where a.first_name = "JOHN";
/* 5.3 */
use sakila;
select a.address, a2.address, c.city
from address a
inner join address a2
on a.city_id  = a2.city_id
inner join city c
on a.city_id = c.city_id
where a.address != a2.address;
/* 1 запрос к своему проекту - название и идентификатор всех поставщиков, чьи товары были проданы от 200р */
use gorodskaya_biblioteka;
select p.nazvanie, p.id_postavshika
from postavshiki p
inner join katalog k
on k.id_postavshika = p.id_postavshika
inner join prodazhy pr
on pr.id_knigi = k.id_knigi
/* 2 запрос - ФИО клиента и продавца, продавшего клиенту товар на сумму от 500р */
use gorodskaya_biblioteka;
select k.fio_klienta, p2.fio_prodavca
from klienty k
inner join prodazhy p
on p.id_klienta = k.id_klienta
inner join prodavcy p2
on p.id_prodavca = p2.id_prodavca
where p.summa > 500;