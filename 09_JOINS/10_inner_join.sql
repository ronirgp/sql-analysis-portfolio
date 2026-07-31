-- ===========================================
-- INNER JOIN Exercise 10
-- Business Request
-- Show
-- - Employee name
-- - Department name
-- - Salary
-- Departments
-- Sales
-- Marketing
-- IT
-- Salary must be
-- BETWEEN 1500 AND 2300
-- Employee name starts with
-- C
-- OR
-- D
-- Order by
-- Employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IN ('Sales', 'Marketing', 'IT')
AND e1.salary BETWEEN 1500 AND 2300
AND 
(e1.name LIKE 'C%'
OR e1.name LIKE 'D%')
ORDER BY e1.name ASC;

