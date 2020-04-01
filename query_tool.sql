-- #1: List details of each employee: employee number, last name, first name, gender, and salary
-- Using Join
SELECT e.emp_no, e.lname, e.fname, e.gender, s.salaries
FROM employees e
FULL OUTER JOIN salaries s
ON e.emp_no = s.emp_no;



-- #2: List employees who were hired in 1986
SELECT emp_no, fname, lname, hire_date
FROM employees 
WHERE EXTRACT(year FROM hire_date) = 1986;



-- #3: List the manager of each department:
--	 	department number, department name
--		employee number, last name, first name
--		start & end employment dates

-- -- QUICK OBSERVATION FROM DATA IN ALL TABLES -- -- 
--	 	department number, department name :: get from 'dept_info'
--		employee number, last name, first name :: get from 'employees'
--		start & end employment dates :: get from 'dept_manager' /OR 'salaries' 
-- 		need to inspect and choose the reliable source to get start & end dates
SELECT dm.emp_no, dm.from_date, s.from_date, dm.to_date, s.to_date
FROM dept_manager dm
JOIN salaries s
ON dm.emp_no = s.emp_no
ORDER BY EXTRACT(year FROM dm.to_date) DESC;    
--- recognized that there are many invalid years of '9999' in (dept_manager.to_date) :: not reliable table to get data
--- thus, select table 'salaries' for data reliability

--- join all four tables to get requested data :: 'dept_info' | 'dept_manager' | 'employees' | 'salaries'
SELECT di.dept_no, di.dept_name, e.emp_no, e.lname, e.fname, s.from_date, s.to_date
FROM dept_info di
JOIN dept_manager dm
ON di.dept_no = dm.dept_no
	JOIN employees e
	ON e.emp_no = dm.emp_no
		JOIN salaries s
		ON e.emp_no = s.emp_no;
		
-- #4: List employee number, last name, first name, and department name for each person
-- -- QUICK OBSERVATION FROM DATA IN ALL TABLES -- --
-- employee number, last name, first name :: get from 'employees'
-- department name :: get from 'dept_info'
-- link employee number with department name :: by using 'dept_emp'
SELECT e.emp_no, e.lname, e.fname, di.dept_name
FROM employees e
JOIN dept_emp dm 
ON e.emp_no = dm.emp_no
	JOIN dept_info di
	ON dm.dept_no = di.dept_no;


-- #5: List all employees whose first name is "Hercules" and last names begin with "B."
SELECT fname first_name, lname last_name
FROM employees
WHERE fname = 'Hercules'
AND lname LIKE 'B%';



-- #6: List all employees in the Sales department, including their employee number, last name, first name, and department name

SELECT e.emp_no, e.lname last_name, e.fname first_name, di.dept_name
FROM employees e
RIGHT JOIN dept_emp de
ON e.emp_no = de.emp_no
	LEFT JOIN dept_info di
	ON  di.dept_no = de.dept_no
	WHERE di.dept_name = 'Sales';
	
	
	
-- #7: List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no, e.lname last_name, e.fname first_name, di.dept_name
FROM employees e
RIGHT JOIN dept_emp de
ON e.emp_no = de.emp_no
	LEFT JOIN dept_info di
	ON  di.dept_no = de.dept_no
	WHERE di.dept_name IN ('Sales', 'Development')
	ORDER BY di.dept_name;



-- #8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT lname last_name, COUNT(lname) last_name_count
FROM employees
GROUP BY last_name
ORDER BY last_name_count DESC;
