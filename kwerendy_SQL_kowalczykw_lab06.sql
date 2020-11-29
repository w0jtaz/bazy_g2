kowalczykw LAB 06 
PKT #1
1) select avg(waga) from kreatura where rodzaj='wiking';
2) select rodzaj, avg(waga) as 'sredniaWaga',  count(nazwa) as 'liczbaKreatur' from kreatura group by rodzaj;
3) select rodzaj, round(avg(year(now())-year(dataUr))) as 'sredniWiek' from kreatura group by rodzaj;

PKT #2
1) select rodzaj, sum(waga*ilosc) from zasob group by rodzaj;
2) select nazwa, avg(waga) from zasob where ilosc>=4  group by nazwa having avg(waga)>10;
   select nazwa, avg(waga) from zasob  group by nazwa having avg(waga)>10 and sum(ilosc)>=4;
3) select rodzaj, count(distinct(nazwa)) from zasob where ilosc > 1 group by rodzaj;

PKT #3
1) select nazwa, k.nazwa, k.idKreatury, e.idKreatury, e.idZasobu, e.ilosc from kreatura k inner join  ekwipunek e on k.idKreatury=e.idKreatury;
   select k.nazwa, sum(e.ilosc) as 'iloscZasobow' from kreatura k inner join  ekwipunek e on k.idKreatury=e.idKreatury group by k.nazwa;
2) select k.idKreatury, k.nazwa, z.nazwa from kreatura k, ekwipunek e, zasob z where k.idKreatury = e.idKreatury and e.idZasobu = z.idZasobu;
3) select *  from kreatura k left join ekwipunek e on k.idKreatury=e.idKreatury where e.idKreatury is NULL;
   select idKreatury, nazwa from kreatura where idKreatury not in(select idKreatury from ekwipunek where idKreatury is not null);


PKT #4
1) select k.nazwa,z.nazwa from kreatura k, ekwipunek e, zasob z where k.idKreatury=e.idKreatury and e.idZasobu=z.idZasobu and year(dataUr) between 1670 and 1679;
2) select k.nazwa, k.dataUr from kreatura as k, ekwipunek as e, zasob as z where k.idKreatury=e.idKreatury and e.idZasobu=z.idZasobu and z.rodzaj='jedzenie' order by k.dataUr desc LIMIT 5;
3) select concat(k1.nazwa,' - ',k2.nazwa) from kreatura k1, kreatura k2 where k1.idKreatury=k2.idKreatury+5;

PKT #5
1) select k.rodzaj, avg(z.ilosc*z.waga) from kreatura as k inner join ekwipunek as e inner join zasob as z on k.idKreatury=e.idKreatury and e.idZasobu=z.idZasobu where k.rodzaj!='malpa' and k.rodzaj!='waz' group by k.rodzaj having sum(e.ilosc)<30;
2) 



