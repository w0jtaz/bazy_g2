kowalczykw LAB 05 
PKT #1
1) create table kreatura select * from wikingowie.kreatura;
create table zasob select * from wikingowie.zasob;
create table ekwipunek select * from wikingowie.ekwipunek;
2) select * from zasob;
3)select * from zasob where rodzaj='jedzenie';
4) select idZasobu, ilosc from ekwipunek where idKreatury IN(1, 3, 5);

PKT #2
1) select * from kreatura where rodzaj !='wiedzma' and udzwig >=50;
2) select * from zasob where waga between 2 and 5;
3) select * from kreatura where nazwa like '%or%' and udzwig between 30 and 70;

PKT #3
1) select * from zasob where month(dataPozyskania) in (7, 8);
2) select * from zasob where rodzaj!='' order by waga asc;
3)select * from kreatura  order by dataUr asc limit 5;

PKT #4
1) select distinct rodzaj from zasob;
2) select concat(nazwa, " - ",  rodzaj) from kreatura where rodzaj like 'wi%';
3) select nazwa, ilosc*waga as waga_calkowita from zasob where year(dataPozyskania) between 2000 and 2007;

PKT #5
1) select nazwa, ilosc*waga*0.7 as 'masaWlasciwa', ilosc*waga*0.3 as 'wagaOdpadu' from zasob;
2) select nazwa from zasob where rodzaj is null;
3)select distinct rodzaj, nazwa from zasob where nazwa like'Ba%' OR nazwa like '%os' order by rodzaj asc;

