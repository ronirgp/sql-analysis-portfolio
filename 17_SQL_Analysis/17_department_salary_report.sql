-- ===========================================
-- SQL Analysis Exercise 17
-- Business Request:
-- Management wants a salary report for
-- every department.
-- Show:
-- - Department ID
-- - Number of employees
-- - Lowest salary
-- - Highest salary
-- - Average salary
-- Only include departments where:
-- - There are at least 2 employees
-- - The highest salary is greater than $2,000
-- Order by:
-- 1. Highest salary DESC
-- 2. Average salary DESC
-- 3. Department ID ASC
-- ===========================================
-- My Solution
SELECT department_id,
COUNT(*) AS total_employees,
MIN(salary) AS lowest_salary,
MAX(salary) AS highest_salary,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND MAX(salary) > 2000
ORDER BY highest_salary DESC, average_salary DESC,
department_id ASC;