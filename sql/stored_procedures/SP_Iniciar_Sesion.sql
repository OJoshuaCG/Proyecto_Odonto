DELIMITER $$
CREATE PROCEDURE SP_Iniciar_Sesion(IN usuario VARCHAR(15),IN pass VARCHAR(15))
BEGIN
SELECT * FROM usuarios WHERE Login = usuario AND Password = pass;
END$$
DELIMITER ;