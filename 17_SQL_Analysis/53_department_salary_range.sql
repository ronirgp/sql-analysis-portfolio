-- Business Request
-- Management wants departments where the salary gap between the highest-paid and 
-- lowest-paid employees is less than $800.

-- Return:
-- department_id
-- highest_salary
-- lowest_salary
-- salary_gap

-- Only include qualifying departments.

-- Order by salary_gap ascending.
-- My solution
SELECT department_id,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS 
salary_gap
FROM employees
GROUP BY department_id
HAVING MAX(salary) - MIN(salary) > 800 
ORDER BY salary_gap ASC;
