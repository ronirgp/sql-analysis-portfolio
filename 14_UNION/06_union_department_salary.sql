-- ===========================================
-- UNION Exercise 6
-- Business Request:
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Combine:
-- 1. Employees from department 1
--    whose salary is greater than 1800.
-- 2. Employees from department 2
--    whose salary is between
--    1500 and 2200.
-- 3. Employees from department 3
--    whose salary is less than 1600.
-- Display them as one report.
-- Remove duplicates.
-- Order by:
-- 1. Department ID ASC.
-- 2. Salary DESC.
-- 3. Employee name ASC.
-- ===========================================
-- My Solution
SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 1
AND salary > 1800
UNION

SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 2
AND salary BETWEEN 1500 AND 2200
UNION

SELECT name,
department_id,
salary
FROM employees
WHERE department_id = 3
AND salary < 1600
ORDER BY department_id ASC, salary DESC, name ASC;
