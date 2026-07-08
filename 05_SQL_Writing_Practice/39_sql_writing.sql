-- ===========================================
-- SQL Writing Exercise 39
--
-- Business Request:
-- The Finance Department wants a report
-- showing:
-- - Each department
-- - Total salary
-- - Average salary
-- - Highest salary
-- - Lowest salary
-- - Total number of employees
--
-- Only include employees earning
-- at least $1200.
--
-- Sort by:
-- 1. Total number of employees
--    (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Average salary (highest to lowest)
-- 4. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
		SUM(salary) AS total_salary,
        AVG(salary) AS average_salary,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary,
        COUNT(*) AS total_employees
FROM employees
WHERE salary >= 1200
GROUP BY department
ORDER BY total_employees DESC, total_salary DESC, average_salary DESC, department ASC;