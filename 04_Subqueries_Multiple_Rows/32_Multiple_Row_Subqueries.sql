-- ===========================================
-- SQL Multiple-Row Subquery Exercise 32
--
-- Business Request:
--
-- Show employees working in:
-- IT
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning LESS than
-- the company average salary
-- AND NOT equal to
-- the company maximum salary.
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
WHERE department_name IN ('IT', 'Marketing'))
AND
(employees.salary <
(SELECT AVG(salary)
FROM employees))
AND 
(employees.salary <>
(SELECT MAX(salary)
FROM employees))
ORDER BY employees.name ASC;

