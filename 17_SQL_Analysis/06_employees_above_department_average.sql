-- ===========================================
-- SQL Analysis Exercise 6
-- Business Request:
-- Management wants to identify employees
-- whose salary is higher than the average
-- salary of their department.
-- Show:
-- - Employee name
-- - Department ID
-- - Employee salary
-- - Department average salary
-- Return ONLY employees earning more than
-- their department average.
-- Order by:
-- 1. Department ID ASC
-- 2. Employee salary DESC
-- ===========================================
-- My Solution
WITH employee_salary AS
(
SELECT name,
department_id,
salary,
AVG(salary) OVER( PARTITION BY department_id 
) AS average_salary
FROM employees
)
SELECT name,
department_id,
salary,
average_salary
FROM employee_salary
WHERE salary > average_salary
ORDER BY department_id ASC, salary DESC;
