use employees;

select * from employees where first_name in ('irina', 'maya', 'vidya');

SELECT * FROM employees WHERE last_name LIKE 'e%';

SELECT * FROM employees WHERE hire_date LIKE '199%' and birth_date LIKE '%-12-25';