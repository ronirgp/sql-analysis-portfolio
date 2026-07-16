-- ===========================================
-- SQL Multiple-Row Subquery Exercise 14
--
-- Business Request:
--
-- The HR Manager wants a report
-- showing employees working in:
--
-- IT
-- Sales
-- Show:
-- - Employee name
-- - Salary
-- Only include employees
-- earning GREATER than
-- the company minimum salary
-- BUT LESS than
-- the company average salary.
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
(
    SELECT department_id
    FROM departments
    WHERE department_name IN ('IT', 'Sales')
)
AND employees.salary >
(
    SELECT MIN(salary)
    FROM employees
)
AND employees.salary <
(
    SELECT AVG(salary)
    FROM employees
)
ORDER BY employees.salary ASC,
         employees.name ASC;