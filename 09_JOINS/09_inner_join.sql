-- ===========================================
-- INNER JOIN Exercise 9
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- IT
-- Developer
-- Salary must NOT be IN
-- (1200, 1300, 1500, 2000)
-- Order by:
-- Department name ASC,
-- Salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IN ('IT', 'Developer')
AND 
e1.salary NOT IN (1200, 1300, 1500, 2000)
ORDER BY e2.department_name ASC, e1.salary DESC;

