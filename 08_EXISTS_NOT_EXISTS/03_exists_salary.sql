-- ===========================================
-- EXISTS Exercise 3
-- Business Request:
-- Show employees whose department exists
-- AND whose salary is less than 1700.
-- Show:
-- - Employee name
-- - Salary
-- Use EXISTS.
-- Order by salary ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e1.salary
FROM employees e1
WHERE EXISTS
( 
SELECT 1
FROM departments e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary < 1700
ORDER BY e1.salary ASC;