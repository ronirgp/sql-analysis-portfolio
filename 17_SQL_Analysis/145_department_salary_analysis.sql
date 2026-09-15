-- Business request:
-- Find departments where:

-- there are at least 2 employees
-- the average salary is at least $1500
-- the highest salary is more than $600 above the average salary

-- Show:
-- department ID
-- employee count
-- average salary
-- highest salary
-- amount the highest salary is above the average

-- Sort by the amount above average, largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS amount_above_average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND AVG(salary) >= 1500
AND MAX(salary) - AVG(salary) > 600
ORDER BY amount_above_average_salary DESC;