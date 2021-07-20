DECLARE @xml_usuario XML = '
<Data>
	<Usuario><Id>14</Id><Nombre>Juan</Nombre></Usuario>
	<Usuario><Id>17</Id><Nombre>Maria</Nombre></Usuario>
	<Usuario><Id>25</Id><Nombre>Carlos</Nombre></Usuario>
	<Usuario><Id>15</Id><Nombre>Fernanda</Nombre></Usuario>
</Data>'
DECLARE @xml_compra XML = '
<Data>
<Item><Usuario>14</Usuario><Producto>78</Producto><Valor>300</Valor></Item>
<Item><Usuario>17</Usuario><Producto>23</Producto><Valor>568</Valor></Item>
<Item><Usuario>17</Usuario><Producto>99</Producto><Valor>350</Valor></Item>
<Item><Usuario>14</Usuario><Producto>99</Producto><Valor>107</Valor></Item>
<Item><Usuario>25</Usuario><Producto>23</Producto><Valor>425</Valor></Item>
</Data>'
DECLARE @xml_itemsIva XML = '
<Data>
<Producto><IdProducto>23</IdProducto><Porcentaje>0.16</Porcentaje></Producto>
<Producto><IdProducto>99</IdProducto><Porcentaje>0.19</Porcentaje></Producto>
</Data>'

EXEC dbo.LeerXml @xml_usuario,@xml_compra,@xml_itemsIva