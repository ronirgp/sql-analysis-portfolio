-- ===========================================
-- LEFT JOIN Exercise 4
-- Business Request:
-- Show:
-- - Employee name
-- - Department name
-- - Salary
-- Show ALL employees.
-- Only include employees who:
-- 1. Belong to the Sales or IT department.
-- 2. Have a salary BETWEEN 1500 AND 2300.
-- 3. Have a name that contains:
--    - the letter 'a'
--      OR
--    - the letter 'n'
-- Order the results by:
-- 1. Department name ASC.
-- 2. Salary DESC.
-- ===========================================
-- My Solution
SELECT e1.name,
e2.department_name,
e1.salary
FROM employees e1
LEFT JOIN departments e2
ON e2.department_id = e1.department_id
WHERE e2.department_name IN ('Sale', 'IT')
AND e1.salary BETWEEN 1500 AND 2300
AND
(e1.name LIKE '%a%'
OR 
e1.name LIKE '%n%'
)
ORDER BY e2.department_name ASC,  e1.salary DESC;
