-- Business request: Management wants a report showing employees who earn less than their manager.

-- Return:
-- employee name
-- manager name
-- employee salary
-- manager salary
-- salary difference
-- Only include employees who have a manager and whose salary is at least $1,200.
-- Sort by salary difference from smallest to largest.SELECT e1.name AS employee_name,
SELECT e2.name AS manager_name,
e1.salary AS employee_salary,
e2.salary AS manager_salary,
e1.salary - e2.salary AS 
salary_difference
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary < e2.salary 
AND e1.salary - e2.salary >= 1200
 ORDER BY salary_difference ASC;
