-- Find departments where the highest salary is at least $800 higher than the average salary of that department.

-- Return:
-- department ID
-- average salary
-- highest salary
-- amount highest salary is above the average

-- Only return departments meeting the $800 requirement.
-- Order by amount_above_average descending.
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS 
amount_above_average
FROM employees
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) >= 800
ORDER BY amount_above_average DESC;