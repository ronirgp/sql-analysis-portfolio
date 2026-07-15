-- ===========================================
-- SQL Multiple-Row Subquery Exercise 4
-- Business Request:
-- Show employees working in:
-- IT
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning between $1300 and $2200.
-- Use a subquery with IN.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE department_id IN
( 
SELECT department_id
FROM departments
WHERE department_name IN ('IT', 'marketing'))
AND employees.salary BETWEEN 1300 AND 2200
ORDER BY employees.salary DESC, employees.name ASC;