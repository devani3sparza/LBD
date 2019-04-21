USE Restaurant

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