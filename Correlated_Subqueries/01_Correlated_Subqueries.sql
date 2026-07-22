-- ===========================================
-- Correlated Subquery Exercise 1
-- Business Request:
-- Show employees who earn MORE than
-- the average salary of THEIR OWN department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- Sort by:
-- 1. Department ID
-- 2. Salary (highest to lowest)
-- Hint:
-- The average salary must be calculated
-- separately for each employee's department.
-- ===========================================
-- My Solution
SELECT e1.name,
       e1.salary
FROM employees e1
WHERE e1.salary >
(
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e1.department_id
);