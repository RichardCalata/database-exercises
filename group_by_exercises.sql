USE employees;


SELECT first_name, last_name, count(*) FROM employees where last_name LIKE 'e%e'
GROUP BY first_name, last_name ORDER BY count(*)desc, last_name;

SELECT last_name
FROM employees
WHere last_name Like '%q%'
and last_name NoT LIKE '%qu%';
GROUP BY last_name;