-- Business request:
-- Create a department salary gap report showing:

-- department ID
-- highest salary
-- lowest salary
-- salary gap between the highest and lowest

-- Only include departments where the salary gap is at least $800.
-- Sort by salary gap from largest to smallest.
-- My solution
SELECT department_id,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS
salary_gap
FROM employees
GROUP BY department_id
HAVING MAX(salary) - MIN(salary) >= 800
ORDER BY salary_gap DESC;