USE [master]
GO
/****** Object:  StoredProcedure [dbo].[LeerXml]    Script Date: 20/07/2021 4:01:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Creación del Procedimiento almacenado  se definieron 3 parametros 
CREATE PROCEDURE [dbo].[LeerXml] @XML_USUARIOS XML, @XML_COMPRAS XML,@XML_ITEMSIV XML
AS
BEGIN
	--Tabla temporal de usuarios
	CREATE TABLE #TablaUsuarios (Id int, Nombre VARCHAR(MAX))
	INSERT INTO #TablaUsuarios 
		SELECT 
			Id = T.Item.query('./Id').value('.', 'INT'),
			Nombre = T.Item.query('./Nombre').value('.', 'VARCHAR(MAX)')
		FROM   @XML_USUARIOS.nodes('Data/Usuario') AS T(Item);

		--Tabla temporal de Compras
	CREATE TABLE #TablaCompras (Producto INT,Usuario INT , Valor DECIMAL)
	INSERT INTO #TablaCompras 
		SELECT 
			Producto = T.Item.query('./Producto').value('.', 'INT'),
			Usuario = T.Item.query('./Usuario').value('.', 'INT'),
			Valor = T.Item.query('./Valor').value('.', 'DECIMAL')
		FROM   @XML_COMPRAS.nodes('Data/Item') AS T(Item);

		--Tabla temporal de Iva
	CREATE TABLE #TablaIva (IdProducto INT,Porcentaje FLOAT)
	INSERT INTO #TablaIva 
		SELECT 
			IdProducto = T.Item.query('./IdProducto').value('.', 'INT'),
			Porcentaje = T.Item.query('./Porcentaje').value('.', 'FLOAT')
		FROM   @XML_ITEMSIV.nodes('Data/Producto') AS T(Item);

	--Se actualiza el Iva
     UPDATE #TablaIva 
		SET Porcentaje = #TablaCompras.Valor * #TablaIva.Porcentaje FROM #TablaCompras WHERE #TablaIva.IdProducto=99 AND #TablaCompras.Usuario=14;
     UPDATE #TablaIva 
		SET Porcentaje = #TablaCompras.Valor * #TablaIva.Porcentaje FROM #TablaCompras WHERE #TablaIva.IdProducto=23 AND #TablaCompras.Usuario=17;
 

	--Actualiza el valor total del usuario 14
    UPDATE #TablaCompras 
		SET Valor = 
		 (
		SELECT SUM(#TablaCompras.Valor) 
			FROM #TablaCompras 
			WHERE #TablaCompras.Usuario = 14
		)
		WHERE #TablaCompras.Usuario = 14; --Id del usuario

    --Actualiza el valor total del usuario 17
	UPDATE #TablaCompras 
		SET Valor = 
		 (
		SELECT SUM(#TablaCompras.Valor) 
			FROM #TablaCompras 
			WHERE #TablaCompras.Usuario = 17
		)
		WHERE #TablaCompras.Usuario = 17; --Id del usuario


	--Realiza un select distinct para que muestre los datos solicitados 
		SELECT DISTINCT #TablaUsuarios.Id,#TablaUsuarios.Nombre,#TablaCompras.Valor,#TablaIva.Porcentaje 
		fROM #TablaUsuarios full join #TablaCompras on #TablaUsuarios.Id = #TablaCompras.Usuario left join #TablaIva ON #TablaIva.IdProducto = #TablaCompras.Producto 
        ORDER BY #TablaUsuarios.Id;
    
    --Se borran las 3 tablas temporales creadas
	DROP TABLE #TablaUsuarios,#TablaCompras,#TablaIva;
	--Se borra el procedimiento Almacenado 
	DROP PROCEDURE dbo.LeerXml;
END