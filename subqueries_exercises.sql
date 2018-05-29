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

select emp_no from dept_manager where to_date >now();

select last_name, emp_no from employees
where emp_no in (select emp_no from dept_manager where to_date >now())and gender = 'f';


SELECT emp_no from dept_manager WHERE to_date > now()
  AND  emp_no IN
(SELECT emp_no from employees WHERE gender = 'f');