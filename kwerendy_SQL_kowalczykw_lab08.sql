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