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

create table job
(
id int auto_increment not null,
position enum('engineer', 'mechanik', 'helmsman', 'manager') not null,
yearOfJoiningTheCompany date not null,
primary key(id)
);

create table information (
id int auto_increment not null,
workerId int not null,
jobId int not null,
dateOfCommiting date not null,
primary key(id),
foreign key(workerId) references worker(id),
foreign key(jobId) references job(id)
);

insert into worker
(name, surname, phoneNumber, email)
values
('Maksim', 'Melnychenko', 380966533411, 'melnychenko.maks@gmail.com'),
('Stepan', 'Hilka', 380748329157, 'hilkanor@gmail.com'),
('Mark', 'Kranker', 380593258164, 'krankermark@gmail.com');

insert into job
(position, yearOfJoiningTheCompany)
values
('engineer', '2020-12-24'),
('mechanik', '2012-03-12'),
('engineer', '2011-02-02'),
('helmsman', '2016-06-04'),
('manager', '2009-02-10');

insert into information
(workerId, jobId, dateOfCommiting)
values
(2, 3, '2020-01-02'),
(2, 4, '2019-04-23'),
(3, 1, '2023-11-19'),
(3, 3, '2018-12-24'),
(1, 2, '2020-10-21'),
(2, 5, '2016-08-03'),
(1, 5, '2021-04-06');
