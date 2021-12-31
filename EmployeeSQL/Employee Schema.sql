--Departments table
CREATE TABLE Departments (
	dept_no VARCHAR,
	dept_name VARCHAR
) ;
SELECT * FROM Departments
alter table Departments
add primary key (dept_no);

--Dept Employee table
CREATE TABLE Dept_Emp (
	emp_no INT,
	dept_no VARCHAR
);
SELECT * FROM Dept_Emp

ALTER TABLE Dept_Emp
ADD CONSTRAINT Department_Employee PRIMARY KEY (emp_no, dept_no);

--Dept Manager Table
CREATE TABLE Dept_Manager (
	dept_no varchar,
	emp_no int 
);
select * from dept_manager

ALTER TABLE dept_manager
ADD CONSTRAINT Department_Manager PRIMARY KEY (dept_no, emp_no);

--Employees table
CREATE TABLE Employees (
	emp_no int, 
	emp_title_id varchar, 
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);
SELECT * FROM employees

ALTER TABLE employees
ADD PRIMARY KEY (emp_no);

--Salaries Table
CREATE TABLE Salaries (
	emp_no int,
	salary int
);
select * from salaries

ALTER TABLE salaries
ADD CONSTRAINT salary PRIMARY KEY (emp_no, salary);

--Title Table
CREATE TABLE Titles (
	title_id varchar,
	title varchar
);
select * from titles

ALTER TABLE titles
ADD PRIMARY KEY (title_id);

--Add Foreign Keys by altering tables
ALTER TABLE Dept_Emp
ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);

ALTER TABLE Dept_Emp
ADD FOREIGN KEY (dept_no) REFERENCES Departments(dept_no);

ALTER TABLE Dept_Manager
ADD FOREIGN KEY (dept_no) REFERENCES Departments(dept_no);

ALTER TABLE Dept_Manager
ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);

ALTER TABLE Employees
ADD FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id);

ALTER TABLE Salaries
ADD FOREIGN KEY (emp_no) REFERENCES Employees(emp_no);
