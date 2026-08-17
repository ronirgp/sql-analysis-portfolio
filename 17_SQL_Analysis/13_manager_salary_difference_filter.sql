-- ===========================================
-- SQL Analysis Exercise 13
-- Business Request:
-- Management wants to find employees whose
-- salary is at least $500 LOWER than their
-- manager's salary.
-- Show:
-- - Employee name
-- - Manager name
-- - Employee salary
-- - Manager salary
-- - Salary difference
-- - Department ID
-- Salary difference should be:
-- employee salary - manager salary
-- Return ONLY employees whose salary difference
-- is less than or equal to -500.
-- Order by:
-- 1. Department ID ASC
-- 2. Salary difference ASC
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
WHERE e1.salary - e2.salary <= 500
ORDER BY department_id ASC, salary_difference ASC;