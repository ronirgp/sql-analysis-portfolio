-- ===========================================
-- SQL Multiple-Row Subquery Exercise 40
--
-- Business Request:
--
-- Show employees working in:
-- IT
-- Sales
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning LESS than
-- the company maximum salary
-- AND NOT equal to
-- the company minimum salary.
-- Use:
-- - One multiple-row subquery
-- - Two single-value subqueries
-- Sort by:
-- 1. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE department_id IN 
(SELECT department_id 
FROM departments
WHERE department_name IN ('IT', 'Sales'))
AND 
(employees.salary <
(SELECT MAX(salary)
FROM employees))
AND
(employees.salary <>
(SELECT MIN(salary)
FROM employees))
ORDER BY employees.name ASC;