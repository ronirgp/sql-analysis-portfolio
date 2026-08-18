-- ===========================================
-- SQL Analysis Exercise 15
-- Business Request:
-- Management wants a report of departments
-- whose average salary is greater than $1,600.
-- Show:
-- - Department ID
-- - Average salary
-- - Number of employees
-- Return ONLY departments whose average
-- salary is greater than $1,600.
-- Order by:
-- 1. Average salary DESC
-- 2. Department ID ASC
-- ===========================================
-- My Solution
SELECT department_id,
AVG(salary) AS average_salary,
COUNT(*) AS totale_employees
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 1600
ORDER BY average_salary DESC, department_id ASC;