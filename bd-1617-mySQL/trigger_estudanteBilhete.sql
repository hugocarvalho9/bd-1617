DELIMITER //
CREATE TRIGGER estudanteBilhete
BEFORE INSERT ON Bilhete
FOR EACH ROW
BEGIN

DECLARE msg VARCHAR (200);

IF (new.estudante IN 
	(SELECT estudante FROM bilhete where 
			estudante = new.estudante
            and viagem = new.viagem
            and data_viagem = new.data_viagem))
THEN 
	SET msg = 'O estudante já reservou a viagem para a data indicicada';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = msg;

END IF;
END //

