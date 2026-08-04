-- ===========================================
-- LEFT JOIN Exercise 6
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- Show ONLY employees
-- who HAVE
-- a matching department.
-- Order by:
-- Department name ASC,
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name, 
e2.department_name
FROM employees e1
LEFT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IS NOT NULL
ORDER BY e2.department_name ASC, e1.name ASC;