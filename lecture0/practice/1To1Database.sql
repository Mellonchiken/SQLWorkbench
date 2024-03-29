create database shipsFactory;

use shipsFactory;

create table buyers
(
buyersId int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
mobileNumber varchar(12) default 'unknown',
primary key(buyersId)
);

create table orders
(
ordersId int auto_increment not null,
buyersId int unique not null,
shipsType varchar(100) not null,
shipsColour varchar(100) default 'doesn`t metter',
shipsSpeed int not null,
primary key(ordersId),
foreign key(buyersId) references buyers(buyersId)
);

insert into buyers 
(name, surname, mobileNumber) 
values
('Maks', 'Melnychenko', 380966533411),
('Vlad', 'Pemov', 380543869126),
('Matvey', 'Kozachek', 380675433287);

insert into orders
(buyersId, shipsType, shipsColour, shipsSpeed)
values
(2, 'cyberM3', 'green', 98),
(3, 'superSpeedTruk8', 'red', 170),
(1, 'mechanicLake2', 'blue', 112);