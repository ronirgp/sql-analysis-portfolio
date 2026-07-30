-- ===========================================
-- NOT EXISTS Exercise 15
-- Business Request:
-- Show employees whose department
-- does NOT exist
-- AND
-- whose salary is NOT BETWEEN
-- 1500 AND 2200.
-- Show:
-- - Employee name
-- - Salary
-- Use:
-- NOT EXISTS
-- Order by employee name ASC.
-- ===========================================
-- My Solution
SELECT e1.name,
e1.salary
FROM employees e1
WHERE NOT EXISTS
(
SELECT 1
FROM departments e2
WHERE e2.department_id = e1.department_id
)
AND e1.salary NOT BETWEEN 1500 AND 2200
ORDER BY e1.name ASC;
