--List employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no=s.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '19860101' AND '19870101';


--List the manager of each deparment with the following information: department number,
--department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d
ON dm.dept_no=d.dept_no
JOIN employees AS e
ON e.emp_no=dm.emp_no;


--List the department of each employee with the following information: employee number,
--last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dep_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON d.dept_no=de.dept_no;


--List first name, last name, and sex for employees whose first name is "Hercules" and
--last name begings with "B".
SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%';


--List all employees in the Sales department, including their employee number, last 
--name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dep_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales';


--List all employees in the Sales and Development departments, including their employee
--number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dep_emp AS de
ON e.emp_no=de.emp_no
JOIN departments AS d
ON d.dept_no=de.dept_no
WHERE d.dept_name='Sales'
OR d.dept_name='Development';


--Indescending order, list the frequency count of employee last names. 
--(i.e. how many employees share each last name)
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name;