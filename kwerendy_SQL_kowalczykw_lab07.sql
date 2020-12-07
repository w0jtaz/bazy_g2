kowalczykw LAB 07
PKT #1

1)	create table etapy_wyprawy select * from wikingowie.etapy_wyprawy;
	create table uczestnicy select * from wikingowie.uczestnicy;
	create table wyprawa select * from wikingowie.wyprawa;
	create table sektor select * from wikingowie.sektor;
	delete from kreatura; insert into kreatura select * from wikingowie.kreatura;
2)	select k.nazwa, u.id_wyprawy, u.id_uczestnika from kreatura k left join uczestnicy u on k.idKreatury=u.id_uczestnika where u.id_uczestnika is null;
3)	SELECT w.nazwa, SUM(e.ilosc) as 'SumaIlosciEkwipunku' FROM kreatura as k, wyprawa as w, uczestnicy as u, ekwipunek as e WHERE k.idKreatury=e.idKreatury AND k.idKreatury=u.id_uczestnika AND u.id_wyprawy=w.id_wyprawy GROUP BY w.nazwa;

PKT #2
1)	SELECT w.nazwa,COUNT(u.id_uczestnika), GROUP_CONCAT(k.nazwa SEPARATOR ' | ') FROM wyprawa AS w, uczestnicy AS u, kreatura AS k WHERE w.id_wyprawy=u.id_wyprawy AND u.id_uczestnika=k.idKreatury GROUP BY w.nazwa;
2)	SELECT et.idEtapu, s.nazwa, w.kierownik FROM etapy_wyprawy et, wyprawa w, sektor s WHERE et.idWyprawy = w.id_wyprawy AND et.sektor = s.id_sektora ORDER BY w.data_rozpoczecia, et.kolejnosc;

PKT #3
1)	select id_sektora,count(idEtapu) odwiedzony from sektor s left join etapy_wyprawy e on e.sektor=s.id_sektora group by id_sektora ;
2)	select nazwa,if(count(id_uczestnika)>0,"bral udzial w wyprawie","nie bral udzialu w wyprawie") from kreatura left join uczestnicy on idKreatury=id_uczestnika group by nazwa ;

PKT #4
1)	SELECT w.nazwa,sum(length(et.dziennik)) as sumaIlosci from wyprawa w inner join etapy_wyprawy et on w.id_wyprawy=et.idEtapu group by w.nazwa having sumaIlosci<400;
2)

PKT #5
1)



