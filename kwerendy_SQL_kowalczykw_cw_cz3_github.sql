kowalczykw Ćwiczenia cz.3 github

1)	select imie, nazwisko, year(data_urodzenia) rok_urodzeniaa from pracownik;
2)	select imie, nazwisko, (year(CURRENT_DATE)-year(data_urodzenia)) wiek from pracownik;
3)	select  nazwa,  count(dzial) liczba_pracowników from dzial, pracownik where id_dzialu = dzial group by dzial;
4)	select k.nazwa_kategori, count(t.id_towaru) ilość from kategoria k, towar t where k.id_kategori = t.kategoria group by k.nazwa_kategori;
5)	select  k.nazwa_kategori,  group_concat(t.nazwa_towaru) nazwa_towaru  from kategoria k, towar t where k.id_kategori = t.kategoria group by k.nazwa_kategori;
6&7) select id_pracownika, imie, nazwisko, round(avg(pensja),2) srednia_pensja from pracownik  where (year(current_date)-year(data_zatrudnienia)) >=5 group by id_pracownika;
8)	select t.nazwa_towaru, sum(p.ilosc) suma_sprzedanych from pozycja_zamowienia  p, towar t where t.id_towaru=p.towar GROUP BY towar order by suma_sprzedanych desc limit 10;
9)	SELECT z.numer_zamowienia, SUM(po.ilosc*po.cena) AS wartosc FROM zamowienie AS z, pozycja_zamowienia AS po WHERE z.data_zamowienia BETWEEN '2017-01-01' AND '2017-03-31' GROUP BY z.numer_zamowienia;
10)	select p.imie, p.nazwisko, sum(pz.cena*pz.ilosc) as suma_wartosci from zamowienie z, pozycja_zamowienia pz, pracownik p where z.pracownik_id_pracownika=p.id_pracownika and pz.zamowienie=z.id_zamowienia group by z.pracownik_id_pracownika order by suma_wartosci desc;
	