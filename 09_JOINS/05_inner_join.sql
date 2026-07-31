-- ===========================================
-- INNER JOIN Exercise 5
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Show employees from:
-- IT
-- OR
-- Marketing
-- Only if salary is
-- greater than or equal to 1700.
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
WHERE
( e2.department_name = 'IT'
OR 
e2.department_name = 'Marketing'
)
AND e1.salary >= 1700
ORDER BY e2.department_name ASC, e1.salary DESC;