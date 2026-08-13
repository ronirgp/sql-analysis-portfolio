-- ===========================================
-- SQL Analysis Exercise 7
-- Business Request:
-- Management wants to identify employees
-- whose salary is NOT the highest salary
-- in their department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Highest salary in their department
-- Return ONLY employees whose salary is
-- lower than the highest salary in their
-- department.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
WITH not_highest_salary AS
(
SELECT name, 
department_id,
salary,
MAX(salary) OVER(PARTITION BY department_id 
) AS MAX_salary
FROM employees
)
SELECT name,
department_id,
salary
FROM not_highest_salary 
WHERE salary < MAX_salary
ORDER BY department_id ASC, salary DESC;
