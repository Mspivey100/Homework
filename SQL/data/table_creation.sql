CREATE TABLE departments (
	dept_no VARCHAR(5) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(60) NOT NULL
);
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	from_date date,
	to_date date 
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5) NOT NULL,
	emp_no INT NOT NULL,
	from_date date,
	to_date date 
);

CREATE TABLE employees(
	emp_no INT NOT NULL,
	birth_date date,
	first_name VARCHAR(225),
	last_name VARCHAR(225),
	gender VARCHAR(1),
	hire_date date
);

CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT,
	from_date date,
	to_date date
);

CREATE TABLE titles(
	emp_no INT NOT NULL,
	title VARCHAR(225),
	from_date date,
	to_date date
);



