-- ===========================================
-- SQL Writing Exercise 25
--
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Each department
-- - Highest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
-- Only include employees earning
-- at least $1300.
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department,
       MAX(salary) AS highest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY total_salary DESC,  average_salary DESC, department ASC;
       