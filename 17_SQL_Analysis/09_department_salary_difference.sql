-- ===========================================
-- SQL Analysis Exercise 9
-- Business Request:
-- Management wants to identify employees
-- who earn MORE than their department average.
-- Show:
-- - Employee name
-- - Department ID
-- - Employee salary
-- - Department average salary
-- - Salary difference from the department average
-- Return ONLY employees whose salary is
-- above their department average.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary difference DESC
-- ===========================================
-- My Solution
WITH employee_salary AS 
(
SELECT name,
department_id,
salary,
AVG(salary) OVER(PARTITION BY department_id
) AS average_salary
FROM employees
)
SELECT name,
       department_id,
       salary,
       average_salary,
salary-average_salary AS department_salary_differenece
FROM employee_salary 
WHERE salary > average_salary
ORDER BY department_id ASC,  department_salary_differenece DESC;