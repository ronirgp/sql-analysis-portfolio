-- ===========================================
-- SQL Multiple-Row Subquery Exercise 13
--
-- Business Request:
-- Show employees working in:
-- Sales
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning BETWEEN the
-- minimum salary and
-- the maximum salary.
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
(
    SELECT department_id
    FROM departments
    WHERE department_name IN ('Sales', 'Marketing')
)
AND employees.salary BETWEEN
(
    SELECT MIN(salary)
    FROM employees
)
AND
(
    SELECT MAX(salary)
    FROM employees
)
ORDER BY employees.salary DESC,
         employees.name ASC;