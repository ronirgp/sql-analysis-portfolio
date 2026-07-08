-- ===========================================
-- SQL Writing Exercise 37
--
-- Business Request:
-- The Chief Financial Officer (CFO)
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
-- 2. Average salary (highest to lowest)
-- 3. Total number of employees
--    (highest to lowest)
-- 4. Department name (A-Z)
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
GROUP by department
ORDER BY lowest_salary DESC, average_salary DESC, total_employees DESC, department ASC;
