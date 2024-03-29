create database spaceTeam;

use spaceTeam;

create table worker
(
id int auto_increment not null,
name varchar(100) not null,
surname varchar(100) not null,
phoneNumber varchar(12) not null,
email varchar(100) default 'unknown',
primary key(id)
);

create table job (
id int auto_increment not null,
position enum('engineer', 'mechanik', 'helmsman', 'manager') not null,
yearOfJoiningTheCompany date not null,
primary key(id)
);

create table information (

);