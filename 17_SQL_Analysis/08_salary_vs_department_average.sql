-- ===========================================
-- SQL Analysis Exercise 8
-- Business Request:
-- Management wants to compare every employee's
-- salary with the average salary of their
-- department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Department average salary
-- - Difference between the employee salary
--   and the department average
-- Return ALL employees.
-- Order by:
-- 1. Department ID ASC
-- 2. Difference DESC
-- ===========================================
-- My Solution
WITH compare_salary AS
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
       average_salary,
       salary - average_salary AS salary_difference
FROM compare_salary
ORDER BY department_id ASC,
         salary_difference DESC;