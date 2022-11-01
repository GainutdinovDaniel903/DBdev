use gorodskaya_biblioteka;
/* Простые запросы 
 1: все книги из каталога, с ценой меньше 500 */
select *
from katalog
where cena < 500;
/* 2: все продажи на сумму меньше 500 */
select *
from prodazhy
where summa < 500;
/* Запросы с агрегациями
1: На какую сумму была продана книга с id = 1 */
select sum(summa)
from prodazhy
where id_knigi = 1;
/* 2: Сколько книг с id = 5 было продано */
select count(id_knigi)
from prodazhy
where id_knigi = 5;
/* Сложные запросы с объединением 2-3 таблиц с помощью join
1: Вывести к таблице продажи ФИО клиента и ФИО продавца с других таблиц*/
select p.id_prodazhi, p.id_klienta, k.fio_klienta, p.id_prodavca, p2.fio_prodavca, p.summa
from prodazhy p
inner join prodavcy p2
on p2.id_prodavca = p.id_prodavca
inner join klienty k
on k.id_klienta = p.id_klienta
order by p.id_prodazhi;
/* 2: Для продаж на сумму больше 800р: вывести id, ФИО клиента, id и название книги, которую он купил, а также ФИО продавца, продавшего книгу*/
select p.id_klienta, k.fio_klienta as `ФИО клиента`, k2.id_knigi, k2.nazvanie as `Название книги`, p.summa as `Сумма`, p2.fio_prodavca as `ФИО продавца`
from prodazhy p 
inner join klienty k
on p.id_klienta = k.id_klienta
inner join katalog k2
on p.id_knigi = k2.id_knigi
inner join prodavcy p2
on p.id_prodavca = p2.id_prodavca 
where p.summa >= 800
order by p.id_klienta;
/* Сложные запросы с объёдинениями 2-3 таблиц и подзапросами
 1: Вывести id, название, количество продаж и поставщика книги с ценой больше 500 */
select p.id_knigi, k.nazvanie, count(p.id_knigi) as `Количество продаж`, p2.nazvanie as `Поставщик`
from prodazhy p
inner join katalog k
on k.id_knigi = p.id_knigi
inner join postavshiki p2 
on k.id_postavshika = p2.id_postavshika
where p.id_knigi in (select k.id_knigi where k.cena > 500)
group by p.id_knigi;
/* 2: Вывести id, ФИО, сумму и количество покупок клиента, купившего 2 или более книги на сумму более 1000*/
select p.id_klienta, k.fio_klienta as `ФИО клиента`, sum(p.summa) as `Сумма покупок`, count(p.id_klienta) as `Количество покупок`
from prodazhy p
left outer join klienty k
on k.id_klienta = p.id_klienta
group by p.id_klienta
having p.id_klienta in (select p.id_klienta where count(p.id_klienta) >= 2 and sum(p.summa) > 1000);



