-- ===========================================
-- RIGHT JOIN Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Show ALL departments.
-- Only include employees who:
-- - Belong to Sales or IT
-- - Salary BETWEEN 1500 AND 2300
-- - Name contains 'a' or 'n'
-- Order by:
-- Department name ASC,
-- Salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
RIGHT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IN ('Sales', 'IT')
AND e1.salary BETWEEN 1500 AND 2300
AND 
(e1.name LIKE '%a%'
OR
e1.name LIKE '%n%'
)
ORDER BY e2.department_name ASC, e1.salary DESC;

