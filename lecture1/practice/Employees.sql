create database employees;

use employees;

create table contacts
(
contactsId int auto_increment not null,
name text not null,
-- you forget about surname.
mobileNumber varchar(12) not null,   -- I seggest to do it with varchar(12) -- You should use varchar(12) because it takes less memory.
primary key(contactsId)
);

create table business_data
(
 business_dataId int auto_increment not null,  -- delete extra space.
salary int not null,
position char not null,
primary key(business_dataId)
);

create table personal_data -- change name of table to 'personal_data'.
(
personal_dataId int auto_increment not null,
maritalStatus enum('married', 'divorced', 'single', 'widower/widow') not null,  -- change enum's constants: ('not married' to 'single'), delete: 'has children', add: 'widower', 'widow').
dateOfBirth date not null,
state char not null, -- you must create three filds like I'd written in the task. Read the task one more time and change it!
city_town_willage char not null,
street char not null,
flat_house_number char not null,
primary key(personal_dataId)
);

insert into contacts
(name, mobileNumber)
values
('Melnychuhenko Makson', 380966533411);

insert into contacts
(name, mobileNumber)
values
('Petuhov Dmitro', 380743610433);

insert into contacts
(name, mobileNumber)
values
('Kladberov Jevgenij', 380643792307);

insert into business_data
(salary, position)
values
(3300, 'inventor');

insert into business_data
(salary, position)
values
(25700, 'programmer');

insert into business_data
(salary, position)
values
(14650, 'pilot');

insert into personal_data
(maritalStatus, dateOfBirth, state, city_town_willage, street, flat_house_number)
values
('married', '2007-10-24', 'Ukraine', 'Kief', 'Garmatnajia', '79');

insert into personal_data
(maritalStatus, dateOfBirth, state, city_town_willage, street, flat_house_number)
values
('widower/widow', '2006-11-01', 'Ukraine', 'Lisichansk', 'Karla Marksa', '16');

insert into personal_data
(maritalStatus, dateOfBirth, state, city_town_willage, street, flat_house_number)
values
('single', '2007-11-07','Ukraine', 'Kremenchuk', 'Dobrosivka', '4');

-- change all inserts with new dates that I wrote adove.

select * from business_data
where salary > 10000;

update personal_data
set maritalStatus = 'married'
where personal_dataId = 3;

update contacts 
set name = 'Melnychenko Maksim'
where contactsId = 1;

update personal_data
set placeOfResidence = 'Ukraine, Kiev, Harmatna, 29/31'
where personal_dataId = 1;

update business_data
set salary = 30000
where business_dataId = 1;

-- About selects and updates: Ok, well done =)