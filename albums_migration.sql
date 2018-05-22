USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums(
id int unsigned not null auto_increment,
primary key(id),
artist varchar(100),
name varchar(100),
release_date smallint unsigned,
genre varchar (100),
sales float (10,2)
);

