/* 4.1: Будут возвращены идентификаторы 101, 107 */

/* 4.2: Будут возвращены идентификаторы 108, 110-113, 115-120*/

/* 4.3: */
use sakila;
select * from payment where amount in ('1.98', '7.98', '9.98');

/* 4.4: */
use sakila;
select * from customer where last_name like '_A%W%'

/* 1 запрос к своему проекту: */
use gorodskaya_biblioteka;
select * from katalog where id_knigi in ('1', '7', '10');

/* 2 запрос: */
use gorodskaya_biblioteka;
select * from postavshiki where nazvanie like 'A%' or nazvanie like 'B%';

/* 3 запрос: */
use gorodskaya_biblioteka;
select p.id_klienta, k.fio_klienta, p.id_prodavca, p.summa from prodazhy p inner join klienty k on p.id_klienta = k.id_klienta where p.id_klienta in ('1', '6', '3');