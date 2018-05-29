USE employees;

select CONCAT(last_name, ', ',first_name), hire_date from employees

where hire_date = (select hire_date from employees where emp_no = 101010);


select title from titles where emp_no in

(select emp_no from employees where first_name = 'Aamod');


select title from titles;

select * from employees where first_name = 'Aamod';


