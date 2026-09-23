-- Find managers whose employees' average salary is at least $1,500.

-- Return:
-- manager name
-- number of employees they manage
-- average employee salary
-- highest employee salary

-- Only include managers with at least 2 employees.
-- Sort by average employee salary, highest to lowest.
-- My solution
SELECT
    e1.name AS manager_name,
    COUNT(*) AS total_employees,
    AVG(e2.salary) AS average_employee_salary,
    MAX(e2.salary) AS highest_employee_salary
FROM employees e1
INNER JOIN employees e2
ON e1.employee_id = e2.manager_id
GROUP BY e1.employee_id, e1.name
HAVING COUNT(*) >= 2
   AND AVG(e2.salary) >= 1500
ORDER BY average_employee_salary DESC;
