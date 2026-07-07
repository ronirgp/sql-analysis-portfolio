-- ===========================================
-- SQL Writing Exercise 23
-- Question:
-- Write a query that shows every department,
-- the average salary,
-- the total salary,
-- the highest salary,
-- and the total number of employees.
--
-- Only include employees whose salary
-- is greater than or equal to 1500.
--
-- Sort by total salary (highest to lowest),
-- then by highest salary (highest to lowest),
-- then by department name (A-Z).
-- ===========================================
-- My Solution
SELECT department,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       MAX(salary) AS highest_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1500
GROUP BY department
ORDER BY  total_salary DESC, highest_salary DESC, department ASC;