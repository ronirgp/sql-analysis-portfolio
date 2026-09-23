-- Find departments where the average salary is at least $1,700 and there are at least 3 employees.

-- Return:
-- department ID
-- employee count
-- average salary
-- highest salary
-- lowest salary

-- Sort by average salary, highest to lowest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) >= 1700
AND COUNT(*) >= 3
ORDER BY average_salary DESC;