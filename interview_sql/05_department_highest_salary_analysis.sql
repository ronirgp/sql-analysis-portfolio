-- Interview Simulation #5

-- A company wants to identify departments where the highest-paid employee earns at least $900 more than the department's average salary.

-- Return:

-- department ID
-- average salary
-- highest salary
-- amount the highest salary is above the average

-- Sort by amount above average, largest to smallest.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) >= 900
ORDER BY amount_above_average_salary DESC;