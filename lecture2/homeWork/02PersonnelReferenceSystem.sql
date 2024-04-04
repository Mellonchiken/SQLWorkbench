-- Спроектуйте базу даних системи відділу кадрів, (використовуючи принцип "many to many".)
-- (Це завдання розраховано на вашу логіку і розуміння пройденого матеріалу, тут головне продумати структуру БД.

create database referenceSystem;

use referenceSystem;

create table personalInformation
(
id int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
phoneNumber varchar(12) not null,
email varchar(100) default 'unknown',
primary key(id)
);

create table profession
(
id int auto_increment not null,
position enum('police officer', 'fireman', 'pilot', 'cosmonaut', 'programer') not null,
yearOfJoiningTheCompany date not null,
primary key(id)
);

create table information (
id int auto_increment not null,
personalInformationId int not null,
professionId int not null,
dateOfCommiting date not null,
primary key(id),
foreign key(personalInformationId) references personalInformation(id),
foreign key(professionId) references profession(id)
);

insert into personalInformation
(name, surname, phoneNumber, email)
values
('Maksim', 'Melnychenko', 380966533411, 'melnychenko.maks@gmail.com'),
('Stepan', 'Hilka', 380748329157, 'hilkanor@gmail.com'),
('Mario', 'Bross', 380593258164, 'immario@gmail.com');

insert into profession
(position, yearOfJoiningTheCompany)
values
('fireman', '2020-12-24'),
('police officer', '2012-03-12'),
('pilot', '2011-02-02'),
('police officer', '2016-06-04'),
('programer', '2009-02-10');

insert into information
(personalInformationId, professionId, dateOfCommiting)
values
(2, 3, '2020-01-02'),
(2, 4, '2019-04-23'),
(3, 1, '2023-11-19'),
(3, 3, '2018-12-24'),
(1, 2, '2020-10-21'),
(2, 5, '2016-08-03'),
(1, 5, '2021-04-06');