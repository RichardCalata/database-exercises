use codeup_test_db;

drop table if exists pizza_order;

create table pizza_order(
primary key(id),
id int unsigned not null auto_increment,
name varchar(100),
phone varchar(30),
email varchar(50),
address varchar (100),
pizza_size varchar(10),
total_cost decimal(10,2),
description varchar(100),
isDelivered tinyint(2),
created_at Datetime,
updated_at datetime




);