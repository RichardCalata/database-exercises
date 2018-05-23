use employees;

SELECT * FROM employees WHERE first_name IN ('irena', 'maya', 'vidya');
SELECT * FROM employees WHERE last_name LIKE 'e%';
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE first_name= 'irena' OR first_name='vidya' OR first_name='maya' AND gender ='m';
SELECT * FROM employees WHERE last_name LIKE 'e%' OR last_name LIKE '%e';
SELECT * FROM employees WHERE last_name LIKE '%q%' and last_name not like '%qu%';