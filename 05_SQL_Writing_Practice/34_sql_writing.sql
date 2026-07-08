-- ===========================================
-- SQL Writing Exercise 34
--
-- Business Request:
-- The Chief Operating Officer (COO)
-- wants a report showing:
-- - Each department
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1400.
--
-- Sort by:
-- 1. Lowest salary (highest to lowest)
-- 2. Highest salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department, 
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       AVG(salary) AS average_salary,
       SUM(salary) AS total_salary,
       COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY lowest_salary DESC, highest_salary DESC, department ASC;

       