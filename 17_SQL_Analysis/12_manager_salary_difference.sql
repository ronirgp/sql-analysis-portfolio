-- ===========================================
-- SQL Analysis Exercise 12
-- Business Request:
-- Management wants to compare each employee's
-- salary with their manager's salary.
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- - Salary difference
-- - Department ID
-- Salary difference should represent:
-- employee salary - manager salary
-- Return ALL employees who have a manager.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary difference DESC
-- ===========================================
-- My Solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary,
e1.salary - e2.salary AS salary_difference,
e1.department_id AS department_id
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
ORDER BY department_id ASC, salary_difference DESC;