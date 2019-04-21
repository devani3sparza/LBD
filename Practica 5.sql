USE Restaurant


	INSERT INTO Restaurante VALUES ('01','Crepe de Paris','82981164','San Nicolas')
	INSERT INTO Restaurante VALUES ('02','Crepe de Paris','11696754','Apodaca')
	INSERT INTO Restaurante VALUES ('03','Crepe de Paris','11696754','Escobedo')
	INSERT INTO Restaurante VALUES ('04','Crepe de Paris','11300343','San Pedro')
	INSERT INTO Restaurante VALUES ('05','Crepe de Paris','18401778','Guadalupe')
	INSERT INTO Restaurante VALUES ('06','Crepe de Paris','12592589','Santiago')
	INSERT INTO Restaurante VALUES ('07','Crepe de Paris','18076455','Allende')
	INSERT INTO Restaurante VALUES ('08','Crepe de Paris','12008374','Monterrey')
	INSERT INTO Restaurante VALUES ('09','Crepe de Paris','18458058','Garcìa')
	INSERT INTO Restaurante VALUES ('10','Crepe de Paris','11698753','Guadalajara')
	SELECT * FROM Restaurante

	INSERT INTO Mesa VALUES ('1','Barra','1','1')
	INSERT INTO Mesa VALUES ('2','Segundo Piso','2','2')
	INSERT INTO Mesa VALUES ('3','Interior','3','3')
	INSERT INTO Mesa VALUES ('4', 'Terraza','4','4')
	INSERT INTO Mesa VALUES ('5','Barra','5','1')
	INSERT INTO Mesa VALUES ('6','Interior','6','6')
	INSERT INTO Mesa VALUES ('7','Segundo Piso','7','7')
	INSERT INTO Mesa VALUES ('8','Barra','8','2')
	INSERT INTO Mesa VALUES ('9','Terraza','9','9')
	INSERT INTO Mesa VALUES ('10','Interior','10','10')
	

	SELECT * FROM Mesa

	INSERT INTO Cliente VALUES ('Laura','1','San Nicolas 274','20120298')
	INSERT INTO Cliente VALUES ('Renata','2','Apodaca 412','16967545')
	INSERT INTO Cliente VALUES ('Oscar','3','Escobedo 523','16967546')
	INSERT INTO Cliente VALUES ('Yair','4','San Pedro 414','13003439')
	INSERT INTO Cliente VALUES ('Denisse','5','Guadalupe 325','84017785')
	INSERT INTO Cliente VALUES ('Luis','6','Santiago 187','25925894')
	INSERT INTO Cliente VALUES ('Alejandro','7','Allende 789','80764552')
	INSERT INTO Cliente VALUES ('Israel','8','Guadalajara 1421','20083743')
	INSERT INTO Cliente VALUES ('Victoria','9','Monterrey 106','84580583')
	INSERT INTO Cliente VALUES ('Ivan','10','Celaya 4','81205574')


	SELECT * FROM Cliente

	 
   INSERT INTO Cargo_Empleado VALUES ('Interior','Mesero 1')
   INSERT INTO Cargo_Empleado VALUES ('Terraza','Mesero 2')
   INSERT INTO Cargo_Empleado VALUES ('Segundo Piso','Mesero 3')
   INSERT INTO Cargo_Empleado VALUES ('Cocina','Cocinero')
   INSERT INTO Cargo_Empleado VALUES ('Entrada','Hostess')
   INSERT INTO Cargo_Empleado VALUES ('Barra','Barman')
 


   SELECT * FROM Cargo_Empleado

	INSERT INTO Turno VALUES ('1','Matutino')
	INSERT INTO Turno VALUES ('2','Matutino')
	INSERT INTO Turno VALUES ('3','Matutino')
	INSERT INTO Turno VALUES ('4','Matutino')
	INSERT INTO Turno VALUES ('5','Intermedio')
	INSERT INTO Turno VALUES ('6','Intermedio')
	INSERT INTO Turno VALUES ('7','Intermedio')
	INSERT INTO Turno VALUES ('8','Intermedio')
	INSERT INTO Turno VALUES ('9','Vespertino')
	INSERT INTO Turno VALUES ('10','Vespertino')
	INSERT INTO Turno VALUES ('11','Vespertino')
	INSERT INTO Turno VALUES ('12','Vespertino')


	SELECT * FROM Turno

	
	INSERT INTO Empleado VALUES ('1','Juan','Garcia','Tamez','10258975', 'Bosquencinos 1', '2', 'Interior', '1')
	INSERT INTO Empleado VALUES ('2','Laura','Barrientos','Alvarez','81201202','Residencial Los pinos 458','1','Terraza','2')
	INSERT INTO Empleado VALUES ('3','Renata','Luna','Castellanos','81169675','Residencial Los Robles 119','3','Segundo Piso','3')
	INSERT INTO Empleado VALUES ('4','Oscar','Manriquez','Alanis','81169675','Altavista 1136','4','Entrada','4')
	INSERT INTO Empleado VALUES ('5','Yair','Dimas','Leos','81130034','Bosques de Valle ALto 880','5','Barra','5')
	INSERT INTO Empleado VALUES ('6','Denisse','Cadena','Lamas','81840177','Campestre Los Critales 456','6','Interior','6')
	INSERT INTO Empleado VALUES ('7','Luis','Guerrero','Jara','81259258','Jardin de las Torres 128','7','Terraza','7')
	INSERT INTO Empleado VALUES ('8','Alejandro','Latin','Regalados','81807645','Las Puentes 751','8','Segundo Piso','8')
	INSERT INTO Empleado VALUES ('9','Israel','Martinez','Velazquez','81200837','Anahuac 568','9','Entrada','9')
	INSERT INTO Empleado VALUES ('10','Victoria','Gutierrez','Rubio','81845805','La azteca 323','10','Barra','10')
	INSERT INTO Empleado VALUES ('11','Alberto','Aguilar','Beltran','81124568','Santa Cecilia 652','11','Interior','11')
	INSERT INTO Empleado VALUES ('12','Manuel','Mediana','Jauregui','81658432','Casa Blanca 431','12','Terraza','12')

	SELECT * FROM Empleado

	

	SELECT * FROM Menu

	INSERT INTO Menu VALUES ('1','Tradicionales','Alitas','139')
	INSERT INTO Menu VALUES ('2','Boneless','Alitas','149')
	INSERT INTO Menu VALUES ('3','buffalo tender','Ensaldas','110')
	INSERT INTO Menu VALUES ('4','Capri paradiso','Ensaldas','99')
	INSERT INTO Menu VALUES ('5','Cesar pollo','Ensaldas','89')
	INSERT INTO Menu VALUES ('6','Bacon Cheeseburguer','Hamburguesas','135')
	INSERT INTO Menu VALUES ('7','Big Jack burgues','Hamburguesas','140')
	INSERT INTO Menu VALUES ('8','Buffalo Ranch Chicken','Hamburguesas','159')
	INSERT INTO Menu VALUES ('9','Pasta c/camarones','Pastas','175')
	INSERT INTO Menu VALUES ('10','Pasta c/champiñones','Pastas','140')
	INSERT INTO Menu VALUES ('11','Lasagna','Pastas','180')
	INSERT INTO Menu VALUES ('12','Agua','Bebida 500 ml','40')
	INSERT INTO Menu VALUES ('13','Refresco','Bebida 500 ml','50')
	INSERT INTO Menu VALUES ('14','Cerveza','Bebida 250 ml','40')
	INSERT INTO Menu VALUES ('15','Vino Rosado','Bebida copa','95')
	INSERT INTO Menu VALUES ('16','Vino Blanco','Bebida copa','85')
	INSERT INTO Menu VALUES ('17','Martini','Bebida copa','75')
	INSERT INTO Menu VALUES ('18','Margarita','Bebida copa','75')
	INSERT INTO Menu VALUES ('19','Jugos naturales','Bebida 500 ml','45')
	INSERT INTO Menu VALUES ('20','Vino Tinto','Bebida copa','80')
	INSERT INTO Menu VALUES ('21','Peperoni','Pizza','150')
	INSERT INTO Menu VALUES ('22','Vegana','Pizza','195')
	INSERT INTO Menu VALUES ('23','Mexicana','Pizza','185')
	INSERT INTO Menu VALUES ('24','Chorizo','Pizza','147')
	INSERT INTO Menu VALUES ('25','Jamon','Pizza','156')
	INSERT INTO Menu VALUES ('26','Crepa Nutela','Postre','75')
	INSERT INTO Menu VALUES ('27','Crepa Frutos','Postre','75')
	INSERT INTO Menu VALUES ('28','Crepa queso','Postre','70')
	INSERT INTO Menu VALUES ('29','Pastel Chocolate','Postre','64')
	INSERT INTO Menu VALUES ('30','Flan','Postre','55')
	INSERT INTO Menu VALUES ('31','Pastel de leche','Postre','76')
	INSERT INTO Menu VALUES ('32','Cheescake','Postre','85')
	INSERT INTO Menu VALUES ('33','Pastel Tortuga','Postre','88')
	INSERT INTO Menu VALUES ('34','Pudin','Postre','45')
	INSERT INTO Menu VALUES ('35','Gelatina','Postre','40')


	INSERT INTO Ticket VALUES ('1','4','5','18','2019-04-19')
	INSERT INTO Ticket VALUES ('2','5','7','19','2019-04-18 12:15:02')
	INSERT INTO Ticket VALUES ('3','6','8','4','2019-04-18 16:32:17:01')
	INSERT INTO Ticket VALUES ('4','7','9','10','2019-04-18 19:08:09:22')
	INSERT INTO Ticket VALUES ('5','8','10','6','2019-04-18 21:45:33:18')


	Select * from Ticket

	UPDATE Restaurante SET Sucursal_r = 'Santa Catarina' WHERE Restaurante_id='10';
	UPDATE Restaurante SET Sucursal_r = 'Contry' WHERE Restaurante_id='9';
	UPDATE Restaurante SET Nom_Restaurante = 'Mestizo';	
	UPDATE Mesa SET #Personas = '4' WHERE Restaurante_id='2';
	UPDATE Mesa SET #Personas = '6' WHERE Restaurante_id='3';
	UPDATE Cliente SET Mesa_id = '1' WHERE Cliente_us='Ivan';
	UPDATE Cliente SET Mesa_id = '10' WHERE Cliente_us='Laura';
	UPDATE Cliente SET TelefonoC = '83657964' WHERE Cliente_us='Renata';
	UPDATE Ticket SET Fecha = '10:25:07:02' WHERE Ticket_id='1';
	UPDATE Ticket SET Menu_id = '29' WHERE Ticket_id='5';

	
	DELETE FROM Ticket WHERE Ticket_id='2';
	DELETE FROM Empleado WHERE Empleado_id='2';
	DELETE FROM Empleado WHERE Empleado_id='6';
	DELETE FROM Empleado WHERE Empleado_id='8';
	DELETE FROM Turno WHERE Turno_id='2';
	DELETE FROM Turno WHERE Turno_id='6';
	DELETE FROM Turno WHERE Turno_id='8';
	DELETE FROM Menu WHERE Producto_id='24';
	DELETE FROM Menu WHERE Producto_id='28';
	DELETE FROM Menu WHERE Producto_id='35';
