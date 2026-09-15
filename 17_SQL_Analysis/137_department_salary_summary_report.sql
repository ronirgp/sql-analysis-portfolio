-- Business request:
-- Create a report showing each department's:

-- total employees
-- average salary
-- highest salary
-- lowest salary
-- salary gap
-- Only include departments with at least 2 employees and an average salary of at least $1,600.
-- Sort by salary gap from largest to smallest.
-- My solution
SELECT department_id,
count(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS 
salary_gap 
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND AVG(salary) >= 1600
ORDER BY salary_gap DESC;
