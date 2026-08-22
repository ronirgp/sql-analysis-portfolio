-- ===========================================
-- SQL Analysis Exercise 20
-- Business Request:
-- Management wants to identify employees
-- whose salary is the highest in their department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- If two or more employees share the highest
-- salary in the same department, include ALL
-- of them.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- 3. Employee name ASC
-- ===========================================
-- My Solution
WITH employee_salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER( PARTITION BY department_id
) AS department_max_salary
FROM employees
) 
SELECT employee_name,
department_id,
employee_salary
FROM  employee_salary
WHERE employee_salary = department_max_salary
ORDER BY department_id ASC, employee_salary DESC, employee_name ASC;

