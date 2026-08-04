-- ===========================================
-- RIGHT JOIN Exercise 3
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- Show ALL departments.
-- Only show employees
-- whose name starts with:
-- A
-- OR
-- C
-- Order by:
-- Department name ASC,
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
RIGHT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE 
(e1.name LIKE 'A%'
OR 
e1.name LIKE 'C%'
)
ORDER BY  e2.department_name ASC, e1.name ASC;
