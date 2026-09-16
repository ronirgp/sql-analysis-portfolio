-- Interview Simulation #4
-- A manager wants to identify employees whose salary is higher than their manager's salary, but only when the employee earns at least $1,500.

-- Return:
-- employee name
-- manager name
-- employee salary
-- manager salary
-- salary difference
-- Sort by salary difference, largest to smallest.
-- My solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary,
e1.salary - e2.salary AS 
salary_difference
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary > e2.salary 
AND e1.salary >= 1500
ORDER BY salary_difference DESC;