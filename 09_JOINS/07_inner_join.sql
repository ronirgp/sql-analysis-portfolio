-- ===========================================
-- INNER JOIN Exercise 7
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Employees from:
-- IT
-- OR
-- Developer
-- Salary must NOT be
-- BETWEEN 1500 AND 2200.
-- Order by:
-- Department name ASC,
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE 
(e2.department_name = 'IT'
OR 
e2.department_name = 'Developer'
)
AND e1.salary NOT BETWEEN 1500 AND 2200
ORDER BY e2.department_name ASC,   e1.name ASC;