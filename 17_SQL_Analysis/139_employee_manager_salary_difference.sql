-- Business request:

-- Find employees who earn at least $500 more than their manager.
-- Show:
-- employee name
-- manager name
-- employee salary
-- manager salary
-- salary difference
-- Sort by salary difference from largest to smallest.
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
WHERE e1.salary - e2.salary >= 500
ORDER BY salary_difference DESC;