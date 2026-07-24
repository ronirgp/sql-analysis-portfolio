-- ===========================================
-- Correlated Subquery Exercise 13
-- Business Request:
-- Show employees whose salary is
-- GREATER THAN the minimum salary
-- in their own department
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery
-- Sort by:
-- 1. Department ID
-- 2. Salary (highest to lowest)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary >
(SELECT MIN(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department, e1.salary DESC;
