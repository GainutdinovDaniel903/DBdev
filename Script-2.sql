create database if not exists biblioteka;
use biblioteka;
create table if not exists prodavcy (
id_prodavca int not null unique,
fio_prodavca char(40) not null,
zarplata_prodavca int not null unique primary key
);
create table if not exists klienty (
id_klienta int not null unique primary key,
fio_klienta char(40) not null
);
create table if not exists postavshiki (
id_postavshika int not null unique primary key,
nazvanie char(40) not null
);
create table if not exists katalog (
id_knigi int not null unique primary key,
nazvanie char(40) not null,
avtor char(40) not null,
id_postavshika int not null unique,
cena int not null
);
create table if not exists prodazhy (
id_prodazhi int not null unique primary key,
id_klienta int not null unique,
id_knigi int not null unique,
id_prodavca int not null unique,
zarplata_prodavca int not null unique,
summa int not null unique
);
ALTER TABLE katalog 
ADD FOREIGN KEY (id_postavshika) references katalog(id_knigi);
ALTER TABLE prodazhy
ADD FOREIGN KEY (id_klienta) REFERENCES klienty(id_klienta);
ALTER TABLE prodazhy
ADD FOREIGN KEY (id_knigi) references katalog(id_knigi);
ALTER TABLE prodazhy
ADD FOREIGN KEY (id_prodavca) references prodavcy(id_prodavca);
ALTER TABLE prodazhy
ADD FOREIGN KEY (zarplata_prodavca) references prodavcy(zarplata_prodavca);
