-- ===========================================
-- SQL Analysis Exercise 4
-- Business Request:
-- Management wants a report showing the
-- highest-paid employee in every department.
-- Show:
-- - Employee name
-- - Department ID
-- - Employee salary
-- Return ONLY the employee(s) with the
-- highest salary in each department.
-- If two employees have the same highest
-- salary in a department, include both.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary DESC
-- ===========================================
-- My Solution
WITH highest_paid AS
(
SELECT name,
department_id,
salary,
MAX(salary) OVER(PARTITION BY department_id
) AS max_salary
FROM employees
)
SELECT name,
department_id,
 max_salary
 FROM highest_paid
 ORDER BY department_id ASC, salary DESC;

