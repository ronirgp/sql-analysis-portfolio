-- ===========================================
-- SQL Multiple-Row Subquery Exercise 9
-- Business Request:
-- Show employees working in:
-- Sales
-- Marketing
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning between the
-- company average salary
-- and the highest salary.
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
    SELECT AVG(salary)
    FROM employees
)
AND
(
    SELECT MAX(salary)
    FROM employees
)
ORDER BY employees.salary DESC,
         employees.name ASC;