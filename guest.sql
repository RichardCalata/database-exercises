use codeup_test_db;

drop table if exists guests;

create table guests(
primary key(id),
id int unsigned not null auto_increment,
name varchar(100)



);

insert into guests(name) values ('daphne'),('velma'),('shaggy'),('fred'),('scooby');