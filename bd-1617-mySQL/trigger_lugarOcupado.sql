DELIMITER //
CREATE TRIGGER lugarOcupado
BEFORE INSERT ON Bilhete
FOR EACH ROW
BEGIN

DECLARE msg VARCHAR (200);

IF (new.lugar IN 
	(SELECT lugar FROM bilhete where 
			data_viagem = new.data_viagem
            and viagem = new.viagem))
THEN 
	SET msg = 'Lugar já ocupado';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;

END IF;
END //




