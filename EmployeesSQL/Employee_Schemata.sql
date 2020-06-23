--DROP TABLE IF EXISTS salaries;
--DROP TABLE IF EXISTS dep_emp;
--DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS departments;
--DROP TABLE IF EXISTS employees;
--DROP TABLE IF EXISTS titles;

--Create data tables with relationships (PK, FK)
CREATE TABLE titles (
    title_id VARCHAR  PRIMARY KEY,
    title VARCHAR   NOT NULL
);

CREATE TABLE employees (
    emp_no INT  PRIMARY KEY,
    emp_title_id VARCHAR   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date DATE   NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR   NOT NULL
);

CREATE TABLE dep_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no), 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR  NOT NULL,
    emp_no INT   NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dep_emp;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM titles;




