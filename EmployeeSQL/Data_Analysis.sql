#QUESTION 1
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
JOIN salaries ON (employees.emp_no=salaries.emp_no)
ORDER BY employees.emp_no;

#QUESTION 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

#QUESTION 3 
SELECT department_manager.dept_no,
departments.dept_name,
department_manager.emp_no,
employees.last_name,
employees.first_name
FROM department_manager
JOIN departments ON (department_manager.dept_no=departments.dept_no)
JOIN employees ON (department_manager.emp_no=employees.emp_no);

#QUESTION 4
SELECT employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees
JOIN department_manager ON (employees.emp_no=department_manager.emp_no)
JOIN departments ON (department_manager.dept_no=departments.dept_no);

#QUESTION 5
SELECT first_name, last_name, sex 
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B';

#QUESTION 6
SELECT departments.dept_name,
department_employee.dept_no,
employees.emp_no,
employees.last_name,
employees.first_name
FROM departments
JOIN department_employee ON (departments.dept_no=department_employee.dept_no)
JOIN employees ON (department_employee.emp_no=employees.emp_no)
WHERE departments.dept_name = 'Sales';

#QUESTION 7 
SELECT employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees
JOIN department_employee ON employees.emp_no = department_employee.emp_no
JOIN departments ON department_employee.dept_no = departments.dept_no
WHERE departments.dept_name IN ('Sales', 'Development')
ORDER BY departments.dept_name;

#QUESTION 8 
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;


