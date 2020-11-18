kowalczykw LAB 04
# pkt 1
a)delete from postac where rodzaj='wiking' and id_postaci=8 and id_postaci=4;
b)alter table walizka drop foreign key walizka_ibfk_1;
alter table przetwory  drop foreign key przetwory_ibfk_1;
alter table przetwory  drop foreign key przetwory_ibfk_2;
alter table postac modify id_postaci int;
alter table postac drop primary key;
# pkt 2
a)alter table  postac add  pesel varchar(11) not null;
 update postac set pesel='765290176531234563' +id_postaci;
b) alter table postac modify rodzaj enum('wiking', 'kobieta', 'ptak', 'syrena');
c) insert into postac values(default, 'Gertruda Nieszczera', 'syrena', '1899-07-30', 54, NULL, 'Perla', '98765432109');
# pkt 3
a) update postac set statek='Perla' where nazwa like '%a%';
b) update statek set max_ladownosc=max_ladownosc*0.7 where data_wodowania > '1601-01-01' and data_wodowania < '2001-01-01';
c) alter table postac add check(wiek<1001);
# pkt 4
a) alter table postac modify rodzaj enum('wiking', 'kobieta', 'ptak', 'syrena', 'waz');
insert into postac values(10, 'Loko', 'waz', '1904-05-04', 33, NULL, NULL, '89765437890');
b)create table marynarz select * from postac;
create table marynarz2 like postac;
c) insert into marynarz2 select * from postac where statek = 'Perla';
# pkt 5
a) alter table marynarz drop column statek;
b)delete from postac where id_postaci=4 and rodzaj='wiking';
alter table postac drop foreign key postac_ibfk_1;
c)
d) drop table statek;
e) create table zwierz(id int(50) auto_increment primary key, nazwa varchar(20), wiek int(20));
f) insert into zwierz(id, nazwa, wiek) select id_postaci, nazwa, wiek from postac where
rodzaj='ptak' and rodzaj='syrena' and rodzaj='waz';



