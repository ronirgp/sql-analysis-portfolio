-- ===========================================
-- SQL Subquery Exercise 16
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- EXACTLY the average salary
-- OR MORE than the highest salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Employee name (A-Z)
-- Think carefully:
-- Is it possible for someone to earn
-- MORE than the highest salary?
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary =
(SELECT AVG(salary)
FROM employees)
OR employees.salary >
(SELECT MAX(salary)
FROM employees)
ORDER BY  employees.name ASC;