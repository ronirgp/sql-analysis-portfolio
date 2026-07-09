-- ===========================================
-- SQL Writing Exercise 44
--
-- Business Request:
-- The Finance Director wants a report
-- showing:
-- - Each department
-- - Total number of employees
-- - Total salary
-- - Average salary
-- - Highest salary
-- - Lowest salary
--
-- Only include employees earning
-- at least $1200.
--
-- After grouping, only show
-- departments that:
-- - Have at least 2 employees
-- OR
-- - Have a total salary
--   of at least $3500
--
-- Sort by:
-- 1. Total salary (highest to lowest)
-- 2. Average salary (highest to lowest)
-- 3. Department name (A-Z)
-- ===========================================
-- My Solution
SELECT department,
		COUNT(*) AS total_employees,
        SUM(salary) AS total_salary,
        AVG(salary) AS average_salary,
        MAX(salary) AS highest_salary,
        MIN(salary) AS lowest_salary
FROM employees
WHERE salary >= 1200
GROUP BY department
HAVING COUNT(*) >=2
OR SUM(employees.salary) >=3500
ORDER BY total_salary DESC, average_salary DESC, department ASC;
        
        
       