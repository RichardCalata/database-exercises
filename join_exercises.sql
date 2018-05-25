USE employees;

select * from employees limit 10;

describe departments;
select  dept_name from departments
join employees on emp_no = emp_no limit 10;


select CONCAT(e.last_name, ', ', e.first_name) AS fullName,d.dept_name as department
from employees AS e
JOIN dept_emp as de
on de.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = de.dept_no

limit 10;

select d.dept_name AS Department,
CONCAT(e.last_name, ', ',e.first_name) as Manager,dm.emp_no
from departments aS d
join dept_manager as dm
on dm.dept_no = dm.dept_no
Join employees as e
on e.emp_no = dm.emp_no
where dm.to_date>=curdate()
ORDER BY d.dept_name;

select  d.dept_name AS DEPARTMENTs, CONCAT(e.last_name,', ',e.first_name) AS DepartmentManager
FROM departments AS d
JOIN dept_emp AS de
on de.dept_no = d.dept_no
Join employees as e
on e.emp_no = de.emp_no
# GROUP BY d.dept_name, e.last_name,e.first_name
limit 100;

select * from titles limit 100;



SELECT d.dept_name AS department,
  CONCAT(e.last_name,', ',e.first_name) AS manager
  from employees as e
JOIN dept_manager AS dm on dm.emp_no = e.emp_no
JOIN departments AS d on d.dept_no = dm.dept_no
WHERE dm.to_date >= curdate() and e.gender = 'f'
ORDER BY d.dept_name;

SELECT DISTINCT title AS Title, count(*) AS count

FROM titles t
  JOIN dept_emp AS de ON de.emp_no = t.emp_no
  JOIN departments d on de.dept_no = d.dept_no
  WHERE dept_name = 'Customer Service'
  AND de.to_date >= curdate()
  AND t.to_date >= curdate()

GROUP BY title;

select * from departments;
describe titles;
