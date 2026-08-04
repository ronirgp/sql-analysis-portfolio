-- ===========================================
-- RIGHT JOIN Exercise 1
-- Business Request:
-- Show:
-- Employee name
-- Department name
-- Show ALL departments.
-- If a department has
-- no employee,
-- show NULL.
-- Order by
-- Department name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name
FROM employees e1
RIGHT JOIN departments e2
ON e2.department_id = e1.department_id
ORDER BY e2.department_name ASC;
