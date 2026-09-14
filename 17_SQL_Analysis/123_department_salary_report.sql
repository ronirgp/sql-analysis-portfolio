-- Business request:
-- Create a department salary report showing:

-- department ID
-- number of employees
-- average salary
-- highest salary
-- lowest salary

-- Only include departments with at least 2 employees.
-- Sort by average salary from highest to lowest.
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;

