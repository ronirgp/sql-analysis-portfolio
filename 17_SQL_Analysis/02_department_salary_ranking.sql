-- ===========================================
-- SQL Analysis Exercise 2
-- Business Request:
-- Management wants a salary ranking for
-- every employee.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Salary rank within the department
-- Do NOT remove any employees.
-- Highest salary in each department
-- should have rank 1.
-- Employees with the same salary should
-- receive the same rank.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
SELECT name,
       department_id,
       salary,
       RANK() OVER(
           PARTITION BY department_id
           ORDER BY salary DESC
       ) AS salary_rank
FROM employees
ORDER BY department_id ASC, salary DESC;
