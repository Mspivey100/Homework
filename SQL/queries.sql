--List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
select employees.emp_no, last_name, first_name, gender,salary
from employees,salaries
where employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.
select *
from employees
where hire_date between '1986-1-1' and '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.
select dept_manager.dept_no, departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name,dept_emp.from_date,dept_emp.to_date
from dept_manager,departments,employees,dept_emp
where dept_manager.dept_no = departments.dept_no AND dept_manager.emp_no = employees.emp_no And dept_manager.emp_no = dept_emp.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
select employees.emp_no, last_name,employees.first_name,dept_name
from employees, dept_emp, departments
where employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no;

--List all employees whose first name is 
--"Hercules" and last names begin with "B."

select *
from employees
where first_name='Hercules' and last_name like 'B%';

--List all employees in the Sales department, 
--including their employee number, last name, first name, 
--and department name.

select employees.emp_no, last_name,employees.first_name,dept_name
from employees, dept_emp, departments
where employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no AND departments.dept_no ='d007';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, 
--and department name.

select employees.emp_no, last_name,employees.first_name,dept_name
from employees, dept_emp, departments
where employees.emp_no = dept_emp.emp_no AND dept_emp.dept_no = departments.dept_no AND departments.dept_no ='d007' or departments.dept_no ='d005';

--In descending order, list the frequency count of employee last names,
--i.e., how many employees share each last name.
select last_name,COUNT(last_name)
from employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

--rude
select *
from employees 
where emp_no = '499942'



