-- ===========================================
-- SQL Writing Exercise 40
--
-- Business Request:
-- The Chief Executive Officer (CEO)
-- wants a report showing:
-- - Each department
-- - Total number of employees
-- - Highest salary
-- - Lowest salary
-- - Average salary
-- - Total salary
--
-- Only include employees earning
-- at least $1400.
--
-- Sort by:
-- 1. Highest salary (highest to lowest)
-- 2. Total salary (highest to lowest)
-- 3. Lowest salary (highest to lowest)
-- 4. Department name (A-Z)
-- ===========================================

-- My Solution
SELECT department,
		COUNT(*) AS total_employees,
        Max(salary) AS  highest_salary,
        MIN(salary) AS lowest_salary,
        AVG(salary) AS average_salary,
        SUM(salary) AS total_salary
FROM employees
WHERE salary >= 1400
GROUP BY department
ORDER BY  highest_salary DESC, total_salary DESC, lowest_salary DESC, department ASC;