USE employees;

select CONCAT(last_name, ', ',first_name), hire_date from employees

where hire_date = (select hire_date from employees where emp_no = 101010);


select title from titles where emp_no in

(select emp_no from employees where first_name = 'Aamod');


select title from titles;

select * from employees where first_name = 'Aamod';

select CONCAT(first_name,' ' ,last_name) AS Name FROM employees
WHERE emp_no
IN (SELECT emp_no FROM dept_manager
WHERE to_date > now())
AND gender ='f';



select dept_name from departments
where dept_no
IN (select dept_no from dept_manager
WHERE emp_no IN
(SELECT emp_no from employees WHERE gender = 'f')
AND to_date > now());

SELECT first_name, last_name FROM employees
WHERE emp_no in (SELECT emp_no FROM salaries
ORDER BY salary DESC);


SELECT emp_no FROM salaries
ORDER BY salary DESC
LIMIT 1;

select * from salaries
ORDER BY salary DESC limit 1;

SELECT first_name, last_name
FROM employees
WHERE emp_no  = (SELECT emp_no From salaries WHERE salary = (SELECT MAX(SALARY) FROM salaries));

select MAX(salary) AS SALARY from salaries;

SELECT emp_no From salaries WHERE salary = (SELECT MAX(SALARY) FROM salaries);

