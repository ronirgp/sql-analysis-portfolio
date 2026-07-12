-- ===========================================
-- SQL Writing Exercise 88
-- Business Request:
-- The Finance Manager wants a list of all
-- different salaries paid in the company.
-- Show:
-- - Salary
-- Do NOT show duplicate salaries.
-- Use DISTINCT.
-- Sort from highest salary
-- to lowest salary.
-- ===========================================
-- My Solution


SELECT DISTINCT employees.salary
FROM employees
ORDER BY employees.salary DESC;