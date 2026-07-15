-- ===========================================
-- SQL Multiple-Row Subquery Exercise 3
-- Business Request:
-- Show employees working in:
-- Sales
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Also show only employees
-- earning at least $1300.
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
WHERE department_name IN ('Sales', 'Marketing'))
AND  employees.salary >= 1300
ORDER BY employees.salary DESC,
         employees.name ASC;