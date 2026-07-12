-- ===========================================
-- SQL Writing Exercise 89
-- Business Request:
-- The CEO wants a list of all
-- different department names
-- where employees work.
-- Show:
-- - Department name
-- Use DISTINCT.
-- Only include departments
-- where employees earn
-- at least $1300.
-- Sort alphabetically (A-Z).
-- ===========================================
-- My Solution
	SELECT DISTINCT departments.department_name
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE employees.salary >= 1300
ORDER BY departments.department_name ASC;