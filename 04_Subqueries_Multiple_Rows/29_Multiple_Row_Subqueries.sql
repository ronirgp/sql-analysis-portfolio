-- ===========================================
-- SQL Multiple-Row Subquery Exercise 29
--
-- Business Request:
--
-- Show employees working in:
--
-- Sales
-- IT
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning GREATER than
-- the company minimum salary
-- AND NOT equal to
-- the company maximum salary.
-- Use:
-- - One multiple-row subquery
-- - Two single-value subqueries
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE department_id IN 
(SELECT department_id
FROM departments
WHERE department_name IN ('Sales','IT'))
AND 
(employees.salary >
(SELECT MIN(salary)
FROM employees))
AND 
(employees.salary <>
(SELECT MAX(salary)
FROM employees))
ORDER BY employees.salary DESC, employees.name ASC;