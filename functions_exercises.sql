USE employees;


SELECT first_name, last_name
FROM employees WHERE (first_name LIKE 'e%e') AND (last_name LIKE 'e%e') limit 100;


SELECT *
FROM employees
WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC limit 5 OFFSET 45;

SELECT CONCAT_ws(' ',first_name,last_name) FROM employees limit 10;

SELECT CONCAT_ws(' ',CONCAT_ws(' ',first_name, last_name, 'has been an employee for' ),
(concat_ws(' ',datediff(curdate(),hire_date )/365 ,'years.'))) as 'YearsEmployed' FROM employees limit 10;
