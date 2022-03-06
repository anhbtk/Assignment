create database Web_banson
-- not run
create table Product(
	productcol nvarchar(45),
	title nvarchar(200),
	description nvarchar(50),
	category int,
	price int,
	active bit,
	imagin nvarchar(max)
);
create table Categories(
	idCategory int primary key,
	title nvarchar(50),
	slug nvarchar(50),
	description nvarchar(50),
	active bit
);
create table [Order](
	idOrder int primary key ,
	[user] int,
	cart_id int ,
	shipping_address nvarchar(100),
	order_description nvarchar(45),
	order_total int,
	is_complete bit,
);
create table [User](
	idUser int primary key,
	username varchar(20),
	password varchar(20),
	email varchar(50),
	phone_number int,
	address nvarchar(100),
);
create table Variation(
	idVariation int primary key,
	product int,
	title nvarchar(50),
	price int,
	sale_price int,
	inventory int,
	active bit,
	
);
create table CartItem(
	idCartItem int primary key,
	cart int,
	item int,
	quantity int,
	
);
create table Cart(
	idCart int primary key,
	[user] int,
	created_at datetime,
	updated_at datetime
);

insert into Product 


