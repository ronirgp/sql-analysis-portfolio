-- ===========================================
-- SQL Writing Exercise 30
--
-- Business Request:
-- The CEO wants a report showing:
-- - Each department
-- - Lowest salary
-- - Highest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
-- Only include employees earning
-- at least $1300.
-- Sort by:
-- 1. Average salary (highest to lowest)
-- 2. Highest salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department,
       MIN(salary) AS lowest_salary,
       MAX(salary) AS highest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1300
GROUP BY department
ORDER BY average_salary DESC, highest_salary DESC, department ASC;