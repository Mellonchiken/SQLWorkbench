create database carsshop;

use carsshop;

create table cars
(
carId int auto_increment not null,
mark varchar(20) not null,
model varchar(20) not null,
speed int not null,
price int not null,
primary key(carId)
);
create table clients 
(
clientId int auto_increment not null,
name varchar(25) not null,
age tinyint not null,
phone varchar(12) not null,
primary key(clientId)
);