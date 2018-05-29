USE employees;

SELECT CONCAT(last_name, ', ',first_name), hire_date FROM employees
WHERE hire_date = (SELECT hire_date FROM employees WHERE emp_no = 101010);


SELECT title FROM titles WHERE emp_no IN
(SELECT emp_no FROM employees WHERE first_name = 'Aamod');

SELECT CONCAT(first_name,' ' ,last_name) AS Name FROM employees
WHERE emp_no
IN (SELECT emp_no FROM dept_manager
WHERE to_date > now())
AND gender ='f';



SELECT dept_name FROM departments
WHERE dept_no
IN (SELECT dept_no FROM dept_manager
WHERE emp_no IN
(SELECT emp_no FROM employees WHERE gender = 'f')
AND to_date > now());


SELECT first_name, last_name
FROM employees
WHERE emp_no  = (SELECT emp_no From salaries WHERE salary = (SELECT MAX(SALARY) FROM salaries));


--failures
SELECT first_name, last_name FROM employees
WHERE emp_no in (SELECT emp_no FROM salaries
ORDER BY salary DESC);

SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 1;

select * from salaries
ORDER BY salary DESC limit 1;
