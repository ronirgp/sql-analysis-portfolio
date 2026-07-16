-- ===========================================
-- SQL Multiple-Row Subquery Exercise 12
--
-- Business Request:
-- Show employees working in:
-- IT
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning GREATER than
-- the minimum salary.
-- Use:
-- - One multiple-row subquery
-- - One single-value subquery
-- Sort by:
-- 1. Salary (lowest to highest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE department_name IN ('IT', 'Marketing'))
AND employees.salary >
(SELECT MIN(salary)
FROM employees)
ORDER BY employees.salary ASC, employees.name ASC;