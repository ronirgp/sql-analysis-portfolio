-- ===========================================
-- Correlated Subquery Exercise 3
-- Business Request:
-- Show employees who earn EXACTLY the
-- average salary of THEIR OWN department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Use:
-- - One correlated subquery
-- Sort by:
-- 1. Department ID
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT e1.name,
e1.department_id,
e1.salary
FROM employees e1
WHERE e1.salary = 
(SELECT AVG(e2.salary)
FROM employees e2
WHERE e2.department_id = e1.department_id
)
ORDER BY e1.department_id, e1.name  ASC;