-- Find departments where the average salary is more than $600 higher than the lowest salary in that department.

-- Return:
-- department ID
-- average salary
-- lowest salary
-- amount average salary is above the lowest salary

-- Only return departments meeting the $600 requirement.
-- Order by amount_above_lowest descending.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MIN(salary) AS lowest_salary,
AVG(salary) - MIN(salary) AS 
amount_above_lowest
FROM employees
GROUP BY department_id
HAVING AVG(salary) - MIN(salary) > 600
ORDER BY amount_above_lowest DESC;