USE employees;


SELECT first_name, last_name, count(*) FROM employees where last_name LIKE 'e%e'
GROUP BY first_name, last_name ORDER BY count(*)desc, last_name;

SELECT count(DISTINCT last_name),last_name, first_name
FROM employees


group by last_name, first_name
limit 200;