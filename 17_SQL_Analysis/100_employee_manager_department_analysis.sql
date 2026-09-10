-- Show employees who earn more than their manager and whose salary is also at least $1,500. Return the
--  employee name, manager name, department ID, employee salary, manager salary, and the salary difference.
--  Only include employees who have a manager. Sort by salary difference from largest to smallest.”
-- My solution
SELECT e1.name AS employee_name,
e2.name AS manager_name,
e1.department_id AS department_id,
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


