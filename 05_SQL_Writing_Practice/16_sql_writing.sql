-- ===========================================
-- SQL Writing Exercise 16
-- Question:
-- Write a query that shows every department,
-- the average salary,
-- the total salary,
-- and the total number of employees.
-- Only include employees whose salary
-- is greater than or equal to 1400.
--
-- Sort by total salary (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY total_salary  DESC, department ASC;

