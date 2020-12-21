kowalczykw Ćwiczenia cz.2 github

1)	select p.imie, p.nazwisko, d.nazwa from pracownik p, dzial  d where p.dzial = d.id_dzialu;
2)	select t.nazwa_towaru, k.nazwa_kategori, s.ilosc from towar t, kategoria k, stan_magazynowy s where t.kategoria = k.id_kategori and t.id_towaru = s.towar order by ilosc DESC;
3)	select z.id_zamowienia, z.data_zamowienia, z.numer_zamowienia, sz.nazwa_statusu_zamowienia, z.klient from zamowienie z, status_zamowienia sz where sz.id_statusu_zamowienia = z.status_zamowienia and sz.nazwa_statusu_zamowienia = "anulowane";
4)	select k.pelna_nazwa, a.ulica, a.kod, a.miejscowosc from klient k, adres_klienta a, typ_adresu ty where k.id_klienta=a.klient and a.typ_adresu=ty.id_typu and a.miejscowosc='Olsztyn' and ty.id_typu=1;
5)	select * from jednostka_miary left join stan_magazynowy
	on jednostka_miary.id_jednostki=stan_magazynowy.jm
	where stan_magazynowy.jm is null;
6)	select z.numer_zamowienia, t.nazwa_towaru, pz.ilosc, pz.cena from zamowienie z, towar t, pozycja_zamowienia pz where pz.towar = t.id_towaru and year(z.data_zamowienia) = 2018;
7)	/*nie robić */
8)	select p.id_pozycji, z.data_zamowienia  from pozycja_zamowienia  p, zamowienie  z where z.id_zamowienia=p.zamowienie order by z.data_zamowienia asc limit 5;
9)	select z.id_zamowienia, z.data_zamowienia, z.numer_zamowienia, sz.nazwa_statusu_zamowienia, z.klient from zamowienie z, status_zamowienia sz where sz.id_statusu_zamowienia = z.status_zamowienia and sz.nazwa_statusu_zamowienia != "zrealizowane";
10)	select * from adres_klienta where kod not like  '__-___';
	select * from adres_klienta where kod not regexp  '[0-9]{2}-[0-9]{3}';
