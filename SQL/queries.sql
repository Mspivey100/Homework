--List the following details of each employee: 
--employee number, last name, first name, gender, and salary.
select employees.emp_no, last_name, first_name, gender,salary
from employees,salaries
where employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.
select *
from employees
where hire_date between '1986-1-1' and '1986-12-31';