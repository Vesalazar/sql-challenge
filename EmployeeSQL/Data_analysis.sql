-- Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;

-- Question 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
JOIN employees e
ON dm.emp_no = e.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_name ASC;

-- Question 4

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
ORDER BY d.dept_name ASC;

-- Question 5

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

-- Question 6

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

-- Question 7

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY d.dept_name ASC;

-- Question 8

SELECT last_name, count(emp_no) as num_emp_w_same_last_name
FROM employees
GROUP BY last_name
ORDER BY num_emp_w_same_last_name;