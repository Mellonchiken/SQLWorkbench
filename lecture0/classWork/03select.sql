use carsshop;

select * from cars;

select mark from cars;

select model from cars;

select speed from cars;

select mark, speed from cars;

select * from carsshop,clients
where clientId = 1;

select * from carsshop.clients
where clientId > 2;

select * from carsshop.clients
where clientsId >= 2;

select * from clients
where clientsId between 1 and 3;

select * from clients
where name = 'Andrew' or name = 'Sergey';

select * from clients
where name = 'Andrew' and age > 18;

select * from clients
where name = 'Andrew' and age > 28;

select * from clients
where not name = 'Andrew';

select name, age, phone from carsshop.clients
where phone like '9%';

select name, age, phone from carsshop.clients
where phone like '%23';

select name, age, phone from carsshop.clients
where phone like '%112%';

select * from carsshop.clients
where age in (18, 20, 23);

select * from carsshop.clients
where age = 18 or age = 20 or age = 23;