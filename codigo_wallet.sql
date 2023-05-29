create schema wallet_coderhouse;
use wallet_coderhouse;

-- Tabla 1 usuarios
create table user(
id_user int auto_increment not null,
first_name varchar(30),
last_name varchar(30),
birthdate date,
age int,
country varchar(30),
location varchar(30),
email varchar(50),
primary key (id_user)
);

-- Tabla 2 transacciones
create table transactions(
id_tx int auto_increment not null,
hour_tx time,
date_tx date,
amount_tx varchar(15),
description_tx text,
status_tx varchar(20),
currency_tx varchar(20),
id_user int,
primary key(id_tx),
foreign key(id_user) references user(id_user)
);

-- Tabla 3 comentarios
create table comments(
id_comment int auto_increment not null,
date_comment date,
commentary text,
id_user int,
primary key(id_comment),
foreign key(id_user) references user(id_user)
);

-- Tabla 4 productos
create table product(
id_product int auto_increment not null,
type_product varchar(15),
available_balance varchar(15),
Q_limit varchar(15),
id_user int,
primary key(id_product),
foreign key(id_user) references user(id_user)
);

-- Tabla 5 estadisticas
create table statics(
id_static int auto_increment not null,
volumen_tx int,
amount_total varchar(30),
Q_aprovedd int,
Q_denied int,
id_user int,
primary key(id_static),
foreign key(id_user) references user(id_user)
);

