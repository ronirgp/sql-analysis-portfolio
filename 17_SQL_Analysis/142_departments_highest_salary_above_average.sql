-- Business request:

-- Find departments where the highest salary is at least $800 above the department average salary.

-- Show:
-- department ID
-- average salary
-- highest salary
-- amount the highest salary is above the average

-- Only include departments meeting the $800 requirement.
-- Sort by the amount above average, largest to smallest.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees 
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) >= 800
ORDER BY amount_above_average_salary DESC;