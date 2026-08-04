-- ===========================================
-- LEFT JOIN Exercise 5
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- Show ONLY employees
-- who DO NOT have
-- a matching department.
-- Order by:
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
LEFT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_id IS NULL
ORDER BY e1.name ASC;
