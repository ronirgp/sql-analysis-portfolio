-- ===========================================
-- NOT EXISTS Exercise 1
-- Business Request:
-- Show employees whose department
-- DOES NOT EXIST.
-- Show:
-- - Employee name
-- - Department ID
-- Use:
-- NOT EXISTS
-- Order by employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e1.salary
FROM employees e1
WHERE NOT EXISTS
(
SELECT 1 
FROM departments e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.name ASC;
