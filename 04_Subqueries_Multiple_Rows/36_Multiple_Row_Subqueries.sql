-- ===========================================
-- SQL Multiple-Row Subquery Exercise 36
--
-- Business Request:
--
-- Show employees working in:
--
-- Sales
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning GREATER than
-- the company minimum salary
-- AND NOT equal to
-- the company average salary.
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
WHERE department_name IN ('Sales', 'Marketing'))
AND 
(employees.salary >
(SELECT MIN(salary)
FROM employees))
AND
(employees.salary <>
(SELECT AVG(salary)
FROM employees))
ORDER BY employees.name ASC;