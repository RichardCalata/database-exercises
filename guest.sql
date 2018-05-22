use codeup_test_db;

drop table if exists guests;

create table guests(
primary key(id),
id int unsigned not null auto_increment,
name varchar(100),
residence varchar(100)



);

insert into guests(name, residence)
values
('daphne','mystery machine'),
('velma','mystery machine'),
('shaggy','mystery machine'),
('fred','mystery machine'),
('scooby','mystery machine'),
('wilma','bedrock'),
('betty','bedrock'),
('barney','bedrock'),
('dino','bedrock');