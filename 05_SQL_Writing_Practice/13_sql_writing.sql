-- ===========================================
-- SQL Writing Exercise 13
-- Question:
-- Write a query that shows every department,
-- the number of employees,
-- and the average salary.
--
-- Only include employees whose salary is
-- greater than or equal to 1300.
--
-- Sort by average salary (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
		COUNT(*) AS total_employees,
        AVG(salary) AS average_salary
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY average_salary DESC,department ASC;
	
