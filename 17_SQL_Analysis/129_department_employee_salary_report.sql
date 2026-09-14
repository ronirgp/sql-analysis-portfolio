-- Business request:
-- Create a report showing each department's total employees and average salary.
-- Only include departments with at least 2 employees and an average salary of at least $1,500.
-- Sort by average salary from highest to lowest.
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND AVG(salary) >= 1500
ORDER BY average_salary DESC;