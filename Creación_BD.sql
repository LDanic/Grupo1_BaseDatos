DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS bills;
DROP TABLE IF EXISTS users;

CREATE TABLE products(
	products_id SERIAL,
	products_name TEXT,
	products_price INTEGER NOT NULL,
	products_inventory INTEGER NOT NULL,
	PRIMARY KEY(products_id)
);

CREATE TABLE bills(
	bill_id SERIAL,
	bill_date DATE NOT NULL,
	bill_total INTEGER NOT NULL,
	PRIMARY KEY(bill_id)
);

CREATE TABLE users(
	users_identification INTEGER NOT NULL,
	users_name VARCHAR(50) NOT NULL,
	users_surname VARCHAR(50) NOT NULL,
	users_password TEXT NOT NULL,
	users_email TEXT NOT NULL,
	PRIMARY KEY(users_id)
);

CREATE TABLE sales(
	sales_id SERIAL,
	sales_quantity INTEGER NOT NULL,
	products_id INTEGER NOT NULL,
	bill_id INTEGER NOT NULL,
	users_id INTEGER NOT NULL,
	PRIMARY KEY(sales_id),
	FOREIGN KEY(products_id) REFERENCES products(products_id),
	FOREIGN KEY(bill_id) REFERENCES bills(bill_id),
	FOREIGN KEY(users_id) REFERENCES users(users_id)
);

--Insersión en tabla bill--
INSERT INTO bills ("bill_date","bill_total") 
VALUES 
	('06/15/2021','34400'),
	('06/15/2021','22600'),
	('10/31/2017','72000'),
	('1/01/2019','29000');
--Insersion en tabla porducts--
INSERT INTO products ("products_name","products_price","products_inventory") 
VALUES
	 ('Bolsa de pan','5000','20'),
	 ('Tostadas Guadalupe','4400','50'),
	 ('Barra jabón','1800','60'),
	 ('Harina','1900','50'),
	 ('Fabuloso','2000','2'),
	 ('Libra azucar','2500','18'),
	 ('Yogurt','2100','7'),
	 ('sixpack de leche','24500','20'),
	 ('galletas saltinas','4800','30'),
	 ('gaseosa 1.5','3000','8'),
	 ('Libra frijol','5000','20'),
	 ('Libra café Aguila Roja','9000','10'),
	 ('Libra de café tostado','12000','20'),
	 ('Galón jabon Dersa','27000','5'),
	('Paquete de gomitas','1200','5');

--Insersion en tabla users--
INSERT INTO users ("users_id","users_name","users_surname", "users_password", "users_email") 
VALUES
	 ('1000168756','Daniela','Cubillos', 'LDiop?8945', 'DaniL.C@gmail.com'),
	 ('25489536','Maria','Linares', 'Tomer.p0228', 'Mari.Linares@gmail.com'),
	 ('79588366','Andres','Manjanares', 'P.Manjandres', 'Andres!M66@gmail.com'),
	 ('102884551','Fernando','Escobar', 'Escobar.P1234', 'LuPEscobar@gmail.com');

--Insersion en tabla sales--
INSERT INTO sales ("sales_quantity","products_id","bill_id", "users_id") 
VALUES 
	('1','8','1', '1000168756'),
	('3','4','1', '1000168756'),
	('2','7','1', '1000168756'),
	('1','5','2', '25489536'),
	('2','6','2', '25489536'),
	('3','15','2', '25489536'),
	('1','13','2', '25489536'),
	('4','6','3', '102884551'),
	('5','9','3', '102884551'),
	('7','11','3', '102884551'),
	('1','10','3', '102884551'),
	('2','1','4', '79588366'),
	('2','2','4', '79588366'),
	('3','10','4', '79588366'),
	('1','15','4', '79588366');
