-- ===========================================
-- SQL Subquery Exercise 102
-- Business Request:
-- The CEO wants to identify
-- the employee(s) earning the
-- highest salary in the company.
-- Show:
-- - Employee name
-- - Salary
-- Sort by employee name (A-Z).
-- ==========================================
-- My Solution
	SELECT 	employees.name,
    employees.salary
    FROM employees
WHERE employees.salary =
( SELECT MAX(salary) 
FROM employees)
ORDER BY employees.name ASC ;

