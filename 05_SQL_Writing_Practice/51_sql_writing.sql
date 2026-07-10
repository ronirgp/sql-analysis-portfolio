-- ===========================================
-- SQL Writing Exercise 51
--
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show every employee together with the
-- name of the department where they work.
--
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
       departments.department_name,
       employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
ORDER BY departments.department_name ASC,
         employees.name ASC;