--Data engineering 

--create table departments PRIMARY KEY

drop table departments; 

create table departments (
	dept_no varchar(20) primary key,	
	dept_name varchar(30) not null,
);

select * 
from departments;


--create table employees PRIMARY KEY

drop table employees;

create table employees (
	emp_no int primary key,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	gender varchar not null,
	hire_date date not null
	
);

--create table department employees

drop table department employees;

create table department_employees (
	emp_no varchar not null,
	dept_no varchar,
	from_date date not null,
	to_date date not null, 
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

select *
from department_employees;


--create table dept_manager 

drop table dept_mananger;

create table dept_mananger (
	dept_no varchar not null,
	emp_no int not null,
	from_date date not null,
	to_date date not null
	foreign key (dept_no) references departments (dept_no),
	foreign key (emp_no) references employees(emp_no)
);

select * 
from dept_mananger;



--create table salaries

drop table salaries;

create table salaries (
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees(emp_no)
);

select * 
from salaries;

--create table titles

drop table titles

create table titles (
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key emp_no references employees(emp_no)
);

select *
from titles;









