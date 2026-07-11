-- ===========================================
-- SQL Writing Exercise 68
-- Business Request:
-- The CEO wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show only employees:
-- - Earning more than $1300
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE employees.salary > 1300
ORDER BY employees.salary DESC, employees.name ASC;