-- ===========================================
-- SQL Multiple-Row Subquery Exercise 1
-- Business Request:
-- Show all employees working in:
-- IT
-- Use a subquery with IN.
-- Show:
-- - Name
-- - Salary
-- Order by name.
-- ===========================================
-- My Solution
SELECT employees.name,
       employees.salary
FROM employees
WHERE department_id IN
(
    SELECT department_id
    FROM departments
    WHERE department_name IN ('IT')
);





