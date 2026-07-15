-- ===========================================
-- SQL Subquery Exercise 22
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- exactly the minimum salary
-- OR exactly the maximum salary
-- OR exactly the average salary.
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
WHERE employees.salary =
(
    SELECT MAX(salary)
    FROM employees
)
OR employees.salary =
(
    SELECT MIN(salary)
    FROM employees
) 
OR employees.salary =
(SELECT AVG(salary)
FROM employees)
ORDER BY employees.salary DESC, employees.name ASC;
