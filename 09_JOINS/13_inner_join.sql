-- ===========================================
-- INNER JOIN Exercise 13
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- Marketing
-- Developer
-- Salary must NOT be
-- BETWEEN 1600 AND 2200
-- Employee name starts with:
-- M
-- OR
-- W
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
WHERE department_name IN ('Marketing', 'Developer')
AND e1.salary NOT BETWEEN 1600 AND 2200
AND 
(e1.name LIKE 'M%'
OR 
e1.name LIKE 'W%'
)
ORDER BY e1.salary DESC, e1.name ASC;


