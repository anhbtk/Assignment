create database Web_banson
-- not run
create table Product(
	productcol nvarchar(45),
	title nvarchar(200),
	description nvarchar(50),
	category int,
	price int,
	active bit,
);
create table Categories(
	idCategory int,
	title nvarchar(50),
	slug nvarchar(50),
	description nvarchar(50),
	active bit
);
create table [Order](
	idOrder int,
	[user] int,
	cart_id int,
	shipping_address nvarchar(100),
	order_description nvarchar(45),
	order_total int,
	is_complete bit,
	
);
create table [User](
	idUser int,
	username varchar(20),
	password varchar(20),
	email varchar(50),
	phone_number int,
	address nvarchar(100),
);
create table Variation(
	idVariation int,
	product int,
	title nvarchar(50),
	price int,
	sale_price int,
	inventory int,
	active bit
);
create table CartItem(
	idCartItem int,
	cart int,
	item int,
	quantity int,
);
create table Cart(
	idCart int,
	[user] int,
	created_at datetime,
	updated_at datetime
);



