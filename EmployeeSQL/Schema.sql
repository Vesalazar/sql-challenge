-- create tables of titles
CREATE TABLE titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(35)
);
-- create table employees
CREATE TABLE employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(45),
	last_name varchar(45),
	sex varchar(1),
	hire_date date
);
-- create table depts
CREATE TABLE departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(30)
);
-- create dept mngr table
CREATE TABLE dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no varchar (10)
);
-- create dept empl table
CREATE TABLE dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(5) references departments(dept_no)
);
-- create salaries table
CREATE TABLE salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int
);

