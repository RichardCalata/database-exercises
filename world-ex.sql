
show databases;

use world;

show tables;

describe city;
select * from city limit 2;

describe country;
select * from country limit 1;

describe countrylanguage;
select * from countrylanguage limit 2;

select language, countrylanguage.percentage from countrylanguage
join country on country.code = countrylanguage.countrycode
  join city on city.countrycode = country.code
  where city.name Like 'santa monica'
order by countrylanguage.percentage;

select region, count(*) from country
GROUP BY region
ORDER BY count(*);

