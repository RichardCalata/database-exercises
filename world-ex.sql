
show databases;

use world;

show tables;

describe city;

describe country;
select * from country limit 1;

describe countrylanguage;

select language from countrylanguage
join country on country.code = countrylanguage.countrycode
  join city on city.countrycode = country.code
  where city.name Like 'santa monica';