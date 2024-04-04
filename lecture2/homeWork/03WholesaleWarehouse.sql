-- Спроектуйте базу даних для оптового складу, який має постачальників товарів, персонал,
-- постійні замовники. Поля таблиць продумати самостійно.
-- (Подумайте який з 3-ох принципів ви б використали для написання цієї БД)

create database warehouse;

use warehouse;

create table staff
(
id int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
phoneNumber varchar(12) not null,
salary int not null,
departmentId varchar(9) not null,
primary key(id)
);

create table supplier
(
id int auto_increment not null,
typeOfProduct varchar(100) not null,
quantityOfProduct int not null,
productId varchar(6) not null,
deliveryTime date not null,
primary key(id)
);

create table buyer
(
id int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
phoneNumber varchar(12) not null,
productId varchar(6) not null,
primary key(id),
foreign key(productId) references supplier(productId)
);

create table information (
id int auto_increment not null,
departmentId int not null,
buyerId int not null,
dateOfCommiting date not null,
primary key(id),
foreign key(departmentId) references staff(departmentId),
foreign key(buyerId) references buyer(id)
);

insert into staff
(name, surname, phoneNumber, salary, departmentId)
values
('Maksim', 'Melnychenko', 380966533411, 2100, 4),
('Stepan', 'Hilka', 380748329157, 1545, 1),
('Mario', 'Bross', 380593258164, 4870, 8),
('Robert', 'Pomodoro', 380843295392, 1230, 6), 
('Giorginia', 'Pomodoro', 380456028459, 980, 5);


insert into supplier
(typeOfProduct, quantityOfProduct, productId, deliveryTime)
values
('Food', 100, 342127, '2020-12-24'),
('Games', 20, 203049, '2012-03-12'),
('Quns', 15, 109395,'2011-02-02'),
('Furniture', 34, 293815, '2016-06-04'),
('Gadgets', 56, 302193,  '2009-02-10');

insert into buyer
(name, surname, phoneNumber, productId)
values
('Matvey', 'Derevo', 380965643298, 109395),
('Andersen', 'Oreov', 380748329157, 302193),
('Luigi', 'Bross', 380593258164, 203049),
('Robert', 'Lulkin', 380843295392, 109395), 
('Garen', 'Kuchar', 380456028459, 342127);


insert into information
(departmentId, buyerId, dateOfCommiting)
values
(4, 3, '2020-01-02'),
(8, 4, '2019-04-23'),
(6, 1, '2023-11-19'),
(1, 3, '2018-12-24'),
(5, 2, '2020-10-21'),
(4, 5, '2016-08-03'),
(5, 5, '2021-04-06');