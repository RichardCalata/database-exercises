USE employees;


SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees ORDER BY last_name DESC limit 10;


SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC limit 5 OFFSET 45;

select CONCAT(first_name,' ',last_name)from employees limit 10;

select datediff(curdate(),hire_date )/365 from employees limit 10;
