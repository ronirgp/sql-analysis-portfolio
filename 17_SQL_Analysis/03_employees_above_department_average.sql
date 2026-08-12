-- ===========================================
-- SQL Analysis Exercise 3
-- Business Request:
-- Management wants to identify employees
-- who earn more than the average salary
-- of their own department.
-- Show:
-- - Employee name
-- - Department ID
-- - Employee salary
-- - Department average salary
-- Return ONLY employees whose salary is
-- greater than their department's average.
-- Order by:
-- 1. Department ID ASC
-- 2. Employee salary DESC
-- ===========================================
-- My Solution
WITH employee_analysis AS
(
    SELECT name,
           department_id,
           salary,
           AVG(salary) OVER(
               PARTITION BY department_id
           ) AS average_salary
    FROM employees
)
SELECT name,
       department_id,
       salary,
       average_salary
FROM employee_analysis
WHERE salary > average_salary
ORDER BY department_id ASC,
         salary DESC;