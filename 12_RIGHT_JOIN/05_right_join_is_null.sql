-- ===========================================
-- RIGHT JOIN Exercise 5
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- Show ONLY departments
-- that DO NOT have
-- any employees.
-- Order by:
-- Department name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
RIGHT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE  e1.name IS NULL
ORDER BY e2.department_name ASC;