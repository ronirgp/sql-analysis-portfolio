-- ===========================================
-- INNER JOIN Exercise 14
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- Sales
-- IT
-- Developer
-- Salary must be:
-- GREATER THAN OR EQUAL TO 1700
-- Employee name contains:
-- a
-- OR
-- r
-- Order by:
-- Department name ASC,
-- Salary DESC
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
INNER JOIN departments e2
ON e2.department_id = e1.department_id
WHERE department_name IN ('Sales', 'IT', 'Developer')
AND e1.salary >= 1700
AND 
(e1.name LIKE '%a%'
OR 
e1.name LIKE '%r%'
)
ORDER BY e2.department_name ASC, e1.salary DESC;