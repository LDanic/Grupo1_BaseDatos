--Eliminación en cada una de las tablas--

DELETE FROM products WHERE products_id = 5;
DELETE FROM sales WHERE sales_id = 16;
DELETE FROM bills WHERE bills_id = 2;
DELETE FROM users WHERE users_id = 25489536;

--Actualizar la información de un producto dado su id--

UPDATE products 
SET products_description = 'huevos',
	products_price = '12000',
	products_inventory  = '10'
WHERE products_id = 1;

--BUSQUEDAS

--Traer un producto dependiendo de su ID --
SELECT *FROM products WHERE products_id IN(4, 6);

--Traer descripcion y precio de un producto a partir del ID--
SELECT products_description, products_price FROM products WHERE products_id IN(4, 6);

--Traer facturas dependiendo de la fecha--
SELECT *FROM bills WHERE bill_date BETWEEN '2019-01-01' AND '2021-12-30';

--Sumar el precio que varios producto que se trajo dependiendo del ID--
SELECT COALESCE(SUM(products_price), 0)  AS TOTAL FROM products WHERE products_id IN(4, 6);
