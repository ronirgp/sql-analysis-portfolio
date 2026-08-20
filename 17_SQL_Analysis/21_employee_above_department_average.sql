-- ===========================================
-- SQL Analysis Exercise 21
-- Management wants to find employees who earn
-- more than the average salary of their department.
-- Show:
-- - Employee name
-- - Department ID
-- - Salary
-- - Department average salary
-- Return ONLY employees whose salary is above
-- their department average.
-- If multiple employees qualify, include all of them.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
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
SELECT  employee_name,
department_id,
employee_salary,
department_average_salary
FROM average_salary
WHERE employee_salary > department_average_salary
ORDER BY department_id ASC, employee_salary DESC;




