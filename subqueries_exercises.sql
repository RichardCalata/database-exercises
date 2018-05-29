USE employees;

select CONCAT(last_name, ', ',first_name), hire_date from employees

where hire_date = (select hire_date from employees where emp_no = 101010);



select