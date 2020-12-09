kowalczykw LAB 08
PKT #1
1) 
DELIMITER //
CREATE TRIGGER kreatura_before_insert
BEFORE INSERT ON kreatura
FOR EACH ROW
BEGIN
  IF NEW.waga < 0
  THEN
    SET NEW.waga = 0;
  END IF;
END
//
DELIMITER ;

PKT #2
1) create table archiwum_wypraw (id_wyprawy int auto_increment primary key, nazwa varchar(100), data_rozpoczecia date, data_zakonczenia date, kierownik varchar(100))
 
DELIMITER //
CREATE TRIGGER wyprawa_after_delete 
AFTER DELETE ON wyprawa 
FOR EACH ROW 
BEGIN  
INSERT INTO archiwum_wypraw(id_wyprawy, nazwa, data_rozpoczecia, data_zakonczenia, kierownik) 
SELECT w.id_wyprawy, w.nazwa, w.data_rozpoczecia, w.data_zakonczenia, k.nazwa from wyprawa w, kreatura k 
WHERE w.kierownik=k.idKreatury AND w.id_wyprawy=OLD.id_wyprawy; 
END 

//
DELIMITER;

PKT #3
1) 
DELIMITER //
CREATE PROCEDURE eliksir_sily(IN id int)
BEGIN
Update kreatura set udzwig = 1.2 * udzwig where idKreatury = id;
END
//
DELIMITER ;

2) 
DELIMITER //
CREATE FUNCTION duze_znaki()     
RETURNS VARCHAR (255)
BEGIN     
DECLARE tekst VARCHAR(255);
    
SELECT Upper(tekst) INTO @tekst;  
 RETURN @tekst; 
END //
DELIMITER ;

select duze_znaki();

PKT #4
1)
DELIMITER $$
CREATE TRIGGER sprawdz_tesciowa
AFTER INSERT ON wyprawa
FOR EACH ROW
BEGIN
DECLARE zmienna INT;
SELECT count(*) INTO zmienna
FROM etapy_wyprawy AS e, kreatura AS k, wyprawa AS w, uczestnicy AS u
WHERE e.idWyprawy=w.id_wyprawy AND k.idKreatury=u.id_uczestnika
AND u.id_wyprawy=w.id_wyprawy
AND k.nazwa='Tesciowa' AND e.sektor=7
AND w.id_wyprawy=NEW.id_wyprawy;
IF zmienna > 0
THEN
INSERT INTO system_alarmowy VALUES(DEFAULT, 'Tesciowa nadchodzi !!!');
END IF;
END
$$
DELIMITER;
2) (nie robić)


PKT #5
1)
DELIMITER //
CREATE PROCEDURE udzwigi(OUT sr FLOAT, OUT su FLOAT, OUT max FLOAT)
BEGIN
SELECT AVG(udzwig) , SUM(udzwig) , MAX(udzwig) INTO sr, su, max from kreatura;
END
//
DELIMITER ;
2)

