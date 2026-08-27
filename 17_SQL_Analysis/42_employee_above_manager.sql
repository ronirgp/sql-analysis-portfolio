-- Business Request
-- Management wants to identify employees who earn more than their manager.

-- Return:

-- Employee name
-- Manager name
-- Employee salary
-- Manager salary

-- Only employees who earn more than their manager.
-- Order by employee salary descending.
-- My solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary
FROM employees e1
INNER JOIN employees e2
ON e2.manager_id = e1.employee_id
WHERE e1.salary > e2.salary
ORDER BY e1.salary DESC;
