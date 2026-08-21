-- ===========================================
-- SQL Analysis Exercise 25
-- Management wants to identify employees whose
-- salary is more than $500 above the average
-- salary of their department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Department average salary
-- - Amount above department average
-- Return ONLY employees who are more than $500
-- above their department average.
-- Order by:
-- 1. Amount above average DESC
-- 2. Department ID ASC
-- ===========================================
-- My Solution
WITH average_salary AS
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id
) AS department_average_salary
FROM employees
)
SELECT employee_name,
       department_id,
       employee_salary,
       department_average_salary,
       employee_salary - department_average_salary
           AS amount_above_average
FROM average_salary
WHERE employee_salary - department_average_salary > 500
ORDER BY amount_above_average DESC,
         department_id ASC;