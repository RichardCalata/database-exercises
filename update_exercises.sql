use codeup_test_db;

select * from albums;

select * from albums where release_date < 1980;

select * from albums where artist = 'michael jackson';

update albums set artist = 'peter jackson' where id in (1,11,21)