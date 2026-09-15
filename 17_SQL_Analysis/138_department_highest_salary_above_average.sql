-- Business request:
-- Create a department salary report showing:

-- department ID
-- average salary
-- highest salary
-- amount by which the highest salary is above the average salary

-- Only include departments where the highest salary is at least $700 above the average salary.

-- Sort by the amount above average, largest to smallest.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) >= 700
ORDER BY amount_above_average_salary DESC;
