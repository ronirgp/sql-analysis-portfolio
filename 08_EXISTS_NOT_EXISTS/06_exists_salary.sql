-- ===========================================
-- EXISTS Exercise 6
-- Business Request:
-- Show employees whose department exists
-- AND whose salary is IN
-- (1200, 1500, 2000, 2600).
-- Show:
-- - Employee name
-- - Salary
-- Use EXISTS.
-- Order by employee name ASC.
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
AND e1.salary IN (1200, 1500, 2000, 2600)
ORDER BY e1.name ASC;