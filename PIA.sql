/*
Devani Lizbeth Esparza Ordaz
Darian Milenia Llamas Rodriguez
Gilberto Jordy Bermudez Langarica
*/

USE Restaurant

CREATE TABLE Restaurante(
	Restaurante_id int PRIMARY KEY not null,  
	Nom_Restaurante varchar(45) not null,  
	Telefono  int not null,  
	Sucursal_r varchar(45) not null,
	CHECK (Telefono>0)
)


SELECT * FROM Restaurante

CREATE TABLE Mesa(
	Restaurante_id int not null FOREIGN KEY (Restaurante_id) REFERENCES Restaurante(Restaurante_id), 
	Area_Restaurante varchar(45) not null,
	Mesa_id int PRIMARY KEY not null,  
	#Personas varchar(45) not null,  
	
)

	SELECT * FROM Mesa

CREATE TABLE Cargo_Empleado(
	Puesto varchar (45) PRIMARY KEY not null,  
	Descripcionp text not null
)
  
   SELECT * FROM Cargo_Empleado

CREATE TABLE Turno(
	Turno_id int PRIMARY KEY not null,  
	Descripciont text not null,
	
)

	SELECT * FROM Turno
	
CREATE TABLE Empleado(
	Empleado_id int PRIMARY KEY ,  
	Nombre_emple varchar ( 30 ),
	ApellidoE_p varchar ( 30 ),
	ApellidoE_m varchar ( 30 ),  
	TelefonoE int not null,  
	DireccionE varchar (45) not null,
	Mesa_id int not null FOREIGN KEY (Mesa_id) REFERENCES Mesa(Mesa_id),
	Cargo_Empleado varchar (45) not null FOREIGN KEY (Cargo_Empleado) REFERENCES Cargo_Empleado(Puesto),  
	Turno_id int not null FOREIGN KEY (Turno_id) REFERENCES Turno(Turno_id),
	CHECK (TelefonoE>0)
)

	SELECT * FROM Empleado

	Select * from bajas

	CREATE TABLE Bajas (
	Empleado_id int NOT NULL FOREIGN KEY (Empleado_id) REFERENCES Empleado(Empleado_id), 
	Nombre_emple varchar(45),
	ApellidoE_P varchar(45)
	)
	
	
	CREATE TABLE Cliente_Frecuente(
		Cliente varchar(45),  
		Cantidad_pedidos int
	)

	select * from Cliente_Frecuente

CREATE TABLE Cliente(
	Cliente_us varchar (45) PRIMARY KEY not null, 
	Mesa_id int not null FOREIGN KEY (Mesa_id) REFERENCES Mesa(Mesa_id),  
	DireccionC varchar(45) not null,  
	TelefonoC int not null,  
	CHECK (TelefonoC>0)
)

	SELECT * FROM Cliente

CREATE TABLE Menu(
	Producto_id int PRIMARY KEY not null, 
	Nombre_p varchar(45) not null,  
	DescripcionP text not null,  
	Precio money not null,
) 

	SELECT * FROM Menu

CREATE TABLE Pedido(
	Id_Pedido int PRIMARY KEY not null,  
	ClienteP varchar (45) not null FOREIGN KEY (ClienteP) REFERENCES Cliente(Cliente_us),
	ProductoP int not null FOREIGN KEY (ProductoP) REFERENCES Menu(Producto_id),
	Direccion_Pedido varchar (45) not null,
	Fecha_Pedido datetime not null
)

   SELECT * FROM Pedido

CREATE TABLE Ticket(
	Ticket_id int PRIMARY KEY not null,  
	Restaurante_id int not null FOREIGN KEY (Restaurante_id) REFERENCES Restaurante(Restaurante_id),   
	Mesa_id int not null FOREIGN KEY (Mesa_id) REFERENCES Mesa(Mesa_id),  
	Menu_id int not null FOREIGN KEY (Menu_id) REFERENCES Menu(Producto_id), 
	Fecha datetime
)

	SELECT * FROM Ticket


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

	SELECT * FROM Ticket

	INSERT INTO Pedido VALUES ('1','Laura','1','San Nicolas 274', '2019-04-08 11:41:23:15')
	INSERT INTO Pedido VALUES ('2','Renata','18','Apodaca 412', '2019-04-18 10:14:23:06')
	INSERT INTO Pedido VALUES ('3','Oscar','5','Escobedo 523', '2019-04-20 01:10:22:07')
	INSERT INTO Pedido VALUES ('4','Yair','23','San Pedro 414', '2019-04-13 12:51:21:08')
	INSERT INTO Pedido VALUES ('5','Denisse','29','Guadalupe 325', '2019-11-08 21:36:20:09')
	INSERT INTO Pedido VALUES ('6','Luis','2','Santiago 187', '2019-04-08 11:23:19:10')
	INSERT INTO Pedido VALUES ('7','Alejandro','8','Allende 789', '2019-04-05 15:06:18:11')
	INSERT INTO Pedido VALUES ('8','Israel','1','Guadalajara 1421', '2019-04-03 12:29:17:12')
	INSERT INTO Pedido VALUES ('9','Victoria','6','Monterrey 106', '2019-04-02 16:44:16:13')
	INSERT INTO Pedido VALUES ('10','Ivan','25','Celaya 4', '2019-04-01 18:36:15:14')

	SELECT * FROM Pedido
	

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

	SELECT * FROM Cliente
	WHERE Cliente.Cliente_us like 'I%'

	SELECT * FROM Empleado
	WHERE Empleado.ApellidoE_p like 'M%'

	SELECT * FROM Menu 
	WHERE Menu.DescripcionP like 'B%'

	SELECT * FROM Cliente
	WHERE Cliente.DireccionC like 'S%'
	ORDER BY Cliente_us

	SELECT * FROM Empleado
	WHERE Empleado.ApellidoE_p like'G%'
	ORDER BY Empleado_id

	SELECT * FROM Ticket
	left join Restaurante 
	ON Ticket.Restaurante_id=Restaurante.Restaurante_id

	SELECT * FROM Ticket
	right join Restaurante 
	ON Ticket.Ticket_id=Restaurante.Restaurante_id

	SELECT * FROM Ticket
	inner join Restaurante
	ON Ticket.Ticket_id=Restaurante.Restaurante_id

	SELECT * FROM Ticket
	cross join Restaurante
	
	SELECT COUNT(Restaurante_id) AS 'Total de sucursales' FROM Restaurante
	SELECT COUNT(Empleado_id) AS 'Total de empleados' FROM Empleado 
	SELECT MIN(Precio) AS 'Producto mas barato' FROM Menu
	SELECT MIN(Fecha) AS 'Primer Ticket' FROM Ticket GROUP BY Fecha
	SELECT MAX(Precio)AS 'Producto mas caro' FROM Menu
	SELECT MAX(Empleado_id)AS 'Ultimo Empleado' FROM Empleado GROUP BY Nombre_emple
	SELECT SUM(Precio) AS 'Precios' FROM Menu
	SELECT AVG(Producto_id) AS 'Productos' FROM Menu
	SELECT AVG(Producto_id) AS 'Productos' FROM Menu GROUP BY Producto_id


		SELECT *FROM 
		(SELECT Empleado_id, count (Empleado_id) AS 'Cantidad de empleados'
			FROM Empleado
			GROUP BY Empleado_id) AS e
		WHERE e.[Cantidad de empleados]>0

	SELECT *FROM  
		(SELECT Precio, count (Precio) AS 'Cantidad Productos'
			FROM Menu
			GROUP BY Precio) AS p
		WHERE p.[Cantidad Productos]>0

	WITH Empleados
	AS 
	(SELECT empleado_id,count(Empleado_id)AS e
		FROM Empleado
		GROUP BY Empleado_id)
	SELECT *
	FROM Empleados
	WHERE Empleados.e>0


	WITH PrecioProductos
	AS 
	(SELECT Precio, count(Precio) as p
		FROM Menu
		GROUP BY Precio
		)
	SELECT *
	FROM PrecioProductos
	WHERE PrecioProductos.p >0


	CREATE VIEW Producto
	AS 
	SELECT *FROM Menu;

	CREATE VIEW Sucursales
	AS 
	SELECT *FROM Restaurante;

	CREATE VIEW Empleados
	AS 
	SELECT *FROM Empleado;

	CREATE VIEW Clientes
	AS 
	SELECT *FROM Cliente;

	CREATE VIEW Mesas
	AS 
	SELECT *FROM Mesa;



		

	CREATE TRIGGER TR_DESPIDOS ON  Empleado AFTER DELETE 
	AS
	DECLARE @empleado_id VARCHAR(45)
	SELECT @Empleado_id = Empleado_id FROM deleted
	DECLARE @Nombre_emple VARCHAR(45)
	SELECT @Nombre_emple = Nombre_emple FROM deleted
	DECLARE @ApellidoE_p VARCHAR(45)
	SELECT @ApellidoE_p = ApellidoE_p FROM deleted
	INSERT INTO Bajas VALUES(@empleado_id,@nombre_emple,@ApellidoE_p)
	GO

	DELETE  FROM Empleado WHERE Empleado_id = 5

GO

	CREATE TRIGGER TR_CLIENTEFRECUENTE on Pedido AFTER INSERT
	AS
	DECLARE @cliente VARCHAR(45)
	SELECT @cliente = ClienteP FROM inserted

	DECLARE @totalpedidos int
	SELECT @totalpedidos = COUNT(ClienteP) FROM Pedido  WHERE ClienteP = @cliente;
	IF @totalpedidos = 1
		INSERT INTO Cliente_Frecuente VALUES(@cliente,'1')
	ELSE
		UPDATE Cliente_Frecuente set Cantidad_pedidos = @totalpedidos WHERE Cliente = @cliente
	GO

	INSERT INTO Pedido VALUES ('3','Laura','2','Guadalupe 325', '2019-04-19 16:32:17.000')

	
		
	CREATE PROCEDURE 
		RestaurantePr(@Restaurante_id int, @Nom_Restaurante varchar(45))
		AS
		BEGIN
		INSERT INTO Restaurante(Restaurante_id, Nom_Restaurante)
		VALUES (@Restaurante_id, @Nom_Restaurante)
		END
		EXEC RestaurantePR @Restaurante_id = 1, @Nom_Restaurante = 'Mestizo'


			

	CREATE PROCEDURE
		MesaPr(@Area_Restaurante varchar(45), @Mesa_id int, @#Personas varchar(45))
		AS
		BEGIN
		INSERT INTO Mesa(Area_Restaurante, Mesa_id, #Personas)
		VALUES (@Area_Restaurante, @Mesa_id, @#Personas)
		END
		EXEC MesaPr @Area_Restaurante = 'Segundo Piso', @Mesa_id = 2, @#Personas = 5



	CREATE PROCEDURE
		CargoPr(@Puesto varchar(45), @Descripcionp text)
		AS
		BEGIN
		INSERT INTO Cargo_Empleado(Puesto, Descripcionp)
		VALUES (@Puesto, @Descripcionp)
		END
		EXEC CargoPr @Puesto = 'Barra' , @Descripcionp = 'Barman'


	CREATE PROCEDURE
		TurnoPr(@Turno_id int, @Descripciont text)
		AS
		BEGIN
		INSERT INTO Turno(Turno_id, Descripciont)
		VALUES (@Turno_id, @Descripciont)
		END
		EXEC TurnoPr @Turno_id = 1 , @Descripciont = 'Matutino'



	CREATE PROCEDURE
		EmpleadoPr(@Empleado_id int, @Nombre_emple varchar(30), @ApellidoE_p varchar(30), @ApellidoE_m varchar(30), @TelefonoE int, @DireccionE varchar(45))
		AS
		BEGIN
		INSERT INTO Empleado(Empleado_id, Nombre_emple, ApellidoE_p, ApellidoE_m, TelefonoE, DireccionE)
		VALUES (@Empleado_id, @Nombre_emple, @ApellidoE_p, @ApellidoE_m, @TelefonoE, @DireccionE)
		END
		EXEC EmpleadoPr @Empleado_id = 1, @Nombre_emple = 'Juan', @ApellidoE_p = 'Garcia' , @ApellidoE_m = 'Tamez', @TelefonoE = 10258975, @DireccionE = 'Bosquencinos 1'

	CREATE PROCEDURE
		BajasPr(@Empleado_id int, @Nombre_emple varchar(45))
		AS
		BEGIN
		INSERT INTO Bajas(Empleado_id, Nombre_emple )
		VALUES (@Empleado_id, @Nombre_emple)
		END
		EXEC BajasPr @Empleado_id = 2 , @Nombre_emple ='Manuel' 


	CREATE PROCEDURE
		ClientePr(@Cliente_us varchar(45), @DireccionC varchar(45), @TelefonoC int)
		AS
		BEGIN
		INSERT INTO Cliente(Cliente_us , DireccionC , TelefonoC)
		VALUES (@Cliente_us, @DireccionC, @TelefonoC)
		END
		EXEC ClientePr @Cliente_us = 'Alejandro', @DireccionC = 'Allende 789', @TelefonoC = 80764552


	CREATE PROCEDURE
		MenuPr(@Producto_id int, @Nombre_p varchar(45), @DescripcionP text, @Precio money)
		AS
		BEGIN
		INSERT INTO Menu(Producto_id, Nombre_p, DescripcionP, Precio)
		VALUES (@Producto_id, @Nombre_p, @DescripcionP, @Precio)
		END
		EXEC MenuPr @Producto_id = 1, @Nombre_p = 'Tradicionales', @DescripcionP = 'Alitas', @Precio = 139

	CREATE PROCEDURE
		PedidoPr(@id_Pedido int, @ClienteP varchar(45), @ProductoP int, @Direccion_Pedido varchar(45), @Fecha_Pedido datetime)
		AS
		BEGIN
		INSERT INTO Pedido(Id_Pedido, ClienteP, ProductoP, Direccion_Pedido, Fecha_Pedido)
		VALUES (@id_Pedido, @ClienteP, @ProductoP, @Direccion_Pedido, @Fecha_Pedido)
		END
		EXEC PedidoPr @id_Pedido = 4 , @ClienteP = 'Renata', @ProductoP = 15, @Direccion_Pedido = 'Apodaca 412', @Fecha_Pedido = '2019-04-18 21:45:33:18'


	CREATE PROCEDURE
		TicketPr(@Ticket_id int, @Restaurante_id int, @Mesa_id int, @Menu_id int, @Fecha datetime)
		AS
		BEGIN
		INSERT INTO Ticket(Ticket_id, Restaurante_id, Mesa_id, Menu_id, Fecha)
		VALUES (@Ticket_id, @Restaurante_id, @Mesa_id, @Menu_id, @Fecha)
		END
		EXEC TicketPr @Ticket_id = 1 , @Restaurante_id = 4, @Mesa_id = 5, @Menu_id = 18, @Fecha = 20190418121502


		CREATE FUNCTION DispoMesa (@dispo varchar)
		RETURNS varchar (45)
		AS
		BEGIN
			DECLARE @disponibilidad int;
			DECLARE @estado varchar(50);

			SET @disponibilidad=(SELECT d.lDispoL from DispoL as o where d.lDispoL=@dispo);

			if(@disponibilidad=1)
				begin 
					set @estado='Disponible';
					end
			else if(@disponibilidad=2)
				begin 
					set @estado='Llena';
					end

				return @disponibilidad
			end
		go	


		SELECT * FROM Cliente
	WHERE Cliente.Cliente_us like 'I%'

	CREATE FUNCTION BUSCAR_CLIENTE (@input VARCHAR(250))
	RETURNS VARCHAR(250)
	AS BEGIN
		DECLARE @b_tabla VARCHAR(250)
		DECLARE @b_cliente VARCHAR(250)

		SET @busqueda = LIKE '%'+@b_cliente+'%'

		RETURN @
	END


			DECLARE @ConsultaSQL NVARCHAR(500)
	DECLARE @tabla NVARCHAR(25)
	DECLARE @columna NVARCHAR(25)
	DECLARE @columna2 NVARCHAR(25)
	DECLARE @as NVARCHAR(25)

	SET @tabla = 'Cliente_Frecuente'
	SET @columna = 'Cantidad_pedidos'
	SET @columna2 = 'Cliente'
	SET @as = 'NumeroPedidos'
	SET @ConsultaSQL = 'SELECT Cliente, MAX('+@columna+') AS '+@as+' FROM ' + @tabla + ' GROUP BY ' + @columna2 + ' ORDER BY ' + @as + ' DESC'
 
	EXEC(@ConsultaSQL)