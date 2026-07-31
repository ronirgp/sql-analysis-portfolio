-- ===========================================
-- INNER JOIN Exercise 3
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Only employees from
-- the IT department.
-- Order by employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
     e2.department_name,
     e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE department_name = 'IT'
ORDER BY e1.name ASC;
