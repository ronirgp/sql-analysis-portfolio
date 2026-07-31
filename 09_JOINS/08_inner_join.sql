-- ===========================================
-- INNER JOIN Exercise 8
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Employees from:
-- Sales
-- Marketing
-- HR
-- Salary must be
-- IN (1500, 1700, 2100, 2400)
-- Order by:
-- Salary DESC,
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IN ('Sales', 'Marketing', 'HR')
AND
e1.salary IN (1500, 1700, 2100, 2400)
ORDER BY e1.salary DESC, e1.name ASC;