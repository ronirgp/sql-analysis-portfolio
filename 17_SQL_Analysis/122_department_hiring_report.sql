-- Business request:

-- Create a hiring report showing each department's number of employees hired and their average salary.
-- Only include departments with at least 2 employees.
-- Sort by number of employees hired, highest to lowest.
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
ORDER BY total_employees DESC;