-- ===========================================
-- SQL Subquery Exercise 103
-- Business Request:
-- The HR Manager wants to identify
-- the employee(s) earning the
-- lowest salary in the company.
-- Show:
-- - Employee name
-- - Salary
-- Sort by employee name (A-Z).
-- ===========================================
-- My Solution
SELECT 	employees.name,
    employees.salary
    FROM employees
WHERE employees.salary =
( SELECT MIN(salary) 
FROM employees)
ORDER BY employees.name ASC ;
