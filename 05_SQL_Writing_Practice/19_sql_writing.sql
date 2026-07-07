-- ===========================================
-- SQL Writing Exercise 19
-- Question:
-- Write a query that shows every department,
-- the total number of employees,
-- the highest salary,
-- the total salary,
-- and the average salary.
--
-- Only include employees whose salary
-- is greater than or equal to 1300.
-- Sort by total number of employees
-- (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department, 
       COUNT(*) AS total_employees,
       Max(salary) AS highest_salary,
       SUM(salary) AS total_salary,
       AVG(salary) AS average_salary
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY total_employees DESC, department ASC;
