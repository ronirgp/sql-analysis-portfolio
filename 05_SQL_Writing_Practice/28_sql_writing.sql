-- ===========================================
-- SQL Writing Exercise 28
--
-- Business Request:
-- The Chief Financial Officer (CFO)
-- wants a report showing:
-- - Each department
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total salary
-- - Total number of employees
-- Only include employees earning
-- at least $1500.
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Lowest salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department, 
	   AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1500
GROUP BY department
ORDER BY average_salary DESC, lowest_salary DESC, department ASC;