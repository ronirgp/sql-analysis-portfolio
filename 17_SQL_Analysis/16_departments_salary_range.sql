-- ===========================================
-- SQL Analysis Exercise 16
-- Business Request:
-- Management wants to identify departments
-- that have:
-- - At least 3 employees
-- - An average salary greater than $1,500
-- Show:
-- - Department ID
-- - Number of employees
-- - Average salary
-- Return ONLY departments that satisfy BOTH
-- conditions.
-- Order by:
-- 1. Average salary DESC
-- 2. Department ID ASC
-- ===========================================
-- My Solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
   AND AVG(salary) > 1500
ORDER BY average_salary DESC, department_id ASC;