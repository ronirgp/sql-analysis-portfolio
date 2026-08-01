-- ===========================================
-- INNER JOIN Exercise 11
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- IT
-- OR
-- Developer
-- Salary must be
-- GREATER THAN 1600
-- Employee name ends with:
-- n
-- OR
-- r
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
( department_name = 'IT'
OR department_name = 'Developer'
)
AND e1.salary > 1600
AND 
(e1.name LIKE '%n'
OR
e1.name LIKE '%r'
)
ORDER BY e1.salary DESC;
