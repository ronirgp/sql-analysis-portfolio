-- ===========================================
-- SQL Analysis Exercise 11
-- Business Request:
-- Management wants to identify employees
-- who earn LESS than their manager.
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- - Department ID
-- Return ONLY employees whose salary is
-- lower than their manager's salary.
-- Order by:
-- 1. Department ID ASC
-- 2. Manager salary DESC
-- 3. Employee salary DESC
-- ===========================================
-- My Solution
SELECT name AS employee_name,
       department_id,
       salary AS employee_salary,
       AVG(salary) OVER(
           PARTITION BY department_id
       ) AS department_average
FROM employees