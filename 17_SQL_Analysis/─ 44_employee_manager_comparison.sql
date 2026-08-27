-- Business Request

-- Management wants to identify employees whose salary is lower than their manager's salary.
--- Return:
Employee name
Manager name
Employee salary
Manager salary
-- Salary difference
-- Use:
-- employee salary − manager salary

-- Only return employees earning less than their manager.
-- Order by salary difference ascending.
-- My solution

SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary,
e1.salary - e2.salary  AS
Salary_difference
FROM employees e1 
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary < e2.salary
ORDER BY  Salary_difference ASC;
