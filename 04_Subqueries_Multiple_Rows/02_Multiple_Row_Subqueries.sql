-- ===========================================
-- SQL Multiple-Row Subquery Exercise 2
-- Business Request:
-- Show all employees working in:
-- IT
-- Marketing
-- Use a subquery with IN.
-- Show:
-- - Employee name
-- - Salary
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
WHERE department_name iN ('IT', 'Marketing')
);
