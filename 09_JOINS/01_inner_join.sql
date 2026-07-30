-- ===========================================
-- INNER JOIN Exercise 1
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- Use:
-- INNER JOIN
-- Order by employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
ORDER BY e1.department_id ASC;