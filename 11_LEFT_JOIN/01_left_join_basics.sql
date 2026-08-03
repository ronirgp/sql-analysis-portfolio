-- ===========================================
-- LEFT JOIN Exercise 1
-- Business Request:
-- Show:
-- Employee name
-- Department name
-- Show ALL employees.
-- If department doesn't exist,
-- show NULL.
-- Order by employee name ASC.
-- =========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
LEFT JOIN departments e2
ON e2.department_id = e1.department_id
ORDER BY e1.name ASC;

