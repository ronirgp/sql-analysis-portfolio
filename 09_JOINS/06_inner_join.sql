-- ===========================================
-- INNER JOIN Exercise 6
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Employees from:
-- Sales OR HR
-- Salary must be
-- BETWEEN 1400 AND 2400.
-- Order by:
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
(e2.department_name = 'Sales'
OR 
e2.department_name = 'HR'
)
AND e1.salary BETWEEN 1400 AND 2400
ORDER BY e1.salary DESC;