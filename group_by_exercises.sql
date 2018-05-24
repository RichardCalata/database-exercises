USE employees;


SELECT first_name, last_name, count(*) FROM employees where last_name LIKE 'e%e'
GROUP BY first_name, last_name ORDER BY count(*)desc;