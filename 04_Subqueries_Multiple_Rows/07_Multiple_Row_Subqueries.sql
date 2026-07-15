-- ===========================================
-- SQL Multiple-Row Subquery Exercise 7
--
-- Business Request:
--
-- Show employees working in:
-- Sales
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning BETWEEN
-- the minimum salary
-- and the average salary.
-- Use:
-- - One multiple-row subquery
-- - Two single-value subqueries
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
WHERE department_name IN ('sales', 'Marketing')
)
AND employees.salary BETWEEN 
(SELECT MIN(salary)
FROM employees)
AND 
(SELECT AVG(salary)
FROM employees)
ORDER BY employees.salary ASC,
         employees.name ASC;


