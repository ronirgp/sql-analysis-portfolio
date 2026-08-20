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
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary  AS employee_salary,
e2.salary AS manager_salary,
e1.department_id AS department_id
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary < e2.salary
ORDER BY department_id ASC,
e2.salary DESC, e1.salary DESC;
