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
1) 
2) 
3)

PKT #4
1) 
2) 
3)

PKT #5
1) 
2) 
3)

