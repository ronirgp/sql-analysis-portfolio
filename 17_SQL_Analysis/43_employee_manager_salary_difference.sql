-- Business Request
-- Management wants to see every employee who has a manager, along with how much higher 
-- or lower the employee's salary is compared with their manager's salary.
-- Return:

-- Employee name
-- Manager name
-- Employee salary
-- Manager salary
-- Salary difference
-- Use:
-- employee salary − manager salary

-- Show all employees who have a manager, regardless of whether they earn more or less.
-- Order by salary difference descending.
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
ORDER BY  Salary_difference DESC;
