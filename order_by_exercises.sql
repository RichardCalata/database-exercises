use employees;

SELECT * FROM employees WHERE first_name ='irena' ORDER BY birth_date AND gender ='f';

SELECT * FROM employees WHERE first_name IN ('irena','vidya','maya') ORDER BY last_name, first_name;

SELECT * FROM employees
WHERE hire_date LIKE '199%'
AND birth_date LIKE '%-12-25'
ORDER BY birth_date DESC, hire_date ASC;
