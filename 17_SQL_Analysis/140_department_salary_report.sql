-- Business request:

-- Create a department salary report showing:
-- department ID
-- number of employees
-- average salary
-- lowest salary
-- highest salary
-- Only include departments with at least 3 employees and an average salary of at least $1600.
-- Sort by average salary from highest to lowest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MIN(salary) AS lowest_salary,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND AVG(salary) >= 1600
ORDER BY average_salary DESC;