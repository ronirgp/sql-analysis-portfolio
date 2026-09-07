-- Find departments where the difference between the highest salary and lowest salary is at least $1,000.

-- Return:
-- department ID
-- highest salary
-- lowest salary
-- salary gap
-- Only return departments meeting the $1,000 requirement.
-- Order by salary_gap descending.

SELECT department_id,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary)- MIN(salary) AS
salary_gap
FROM employees
GROUP BY department_id
HAVING max(salary) - MIN(salary) >= 1000
ORDER BY salary_gap DESC;