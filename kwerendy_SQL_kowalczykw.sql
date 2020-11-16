kowalczykw
Polecenia MySQL
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

# pkt 4

# pkt 5

# pkt 6

# pkt 7

# pkt 8
