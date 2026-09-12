-- “Show employees whose salary is at least $500 higher than their manager's salary OR whose salary  is more than $300
--  lower than their manager's salary. Return the employee name, manager name, employee salary, manager salary,
--  and salary difference. Only include employees who have a manager. Sort by salary difference from largest to smallest.”
-- My solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.salary AS employee_salary,
e2.name AS manager_name,
e1.salary - e2.salary AS 
salary_difference
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary - e2.salary >= 500
OR e1.salary - e2.salary < -300
ORDER BY salary_difference DESC;