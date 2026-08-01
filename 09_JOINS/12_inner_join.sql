-- ===========================================
-- INNER JOIN Exercise 12
--
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Departments:
-- Sales
-- IT
-- Salary must be:
-- BETWEEN 1400 AND 2400
-- Employee name contains:
-- a
-- OR
-- o
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
 department_name IN ('Sales', 'IT')

AND e1.salary BETWEEN 1400 AND 2400
AND
(e1.name LIKE '%a%'
OR 
e1.name LIKE '%o%'
)
ORDER BY e2.department_name ASC,  e1.name ASC;

