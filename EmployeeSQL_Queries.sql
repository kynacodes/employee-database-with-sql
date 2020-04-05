SELECT e.emp_no, e.last_name, e.first_name, e.gender, salaries.salary
FROM employees as e
JOIN salaries 
ON (e.emp_no = salaries.emp_no);

SELECT * FROM employees
WHERE left(hire_date, 4) = '1986';

SELECT d.dept_no, departments.dept_name, d.emp_no, employees.last_name, employees.first_name, d.from_date, d.to_date
FROM dept_manager as d
JOIN departments
ON(d.dept_no = departments.dept_no)
JOIN employees
ON(d.emp_no = employees.emp_no);

SELECT e.emp_no, e.last_name, e.first_name, dept_emp.dept_no, departments.dept_name
FROM employees as e
JOIN dept_emp
ON(e.emp_no = dept_emp.emp_no)
JOIN departments
ON(departments.dept_no = dept_emp.dept_no);

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND left(last_name, 1) = 'B';

SELECT e.emp_no, e.last_name, e.first_name, dept_emp.dept_no, departments.dept_name
FROM employees as e
JOIN dept_emp
ON (e.emp_no = dept_emp.emp_no)
JOIN departments
ON(dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, dept_emp.dept_no, departments.dept_name
FROM employees as e
JOIN dept_emp
ON (e.emp_no = dept_emp.emp_no)
JOIN departments
ON (dept_emp.dept_no = departments.dept_no)
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

SELECT last_name, COUNT(*) AS number_last_names
FROM employees
GROUP BY last_name
ORDER BY number_last_names DESC;
