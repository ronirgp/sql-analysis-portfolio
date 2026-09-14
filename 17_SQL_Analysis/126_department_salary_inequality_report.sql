-- Business request:
-- Management wants a report identifying departments with potential salary inequality.

-- Show:
-- department ID
-- number of employees
-- average salary
-- highest salary
-- lowest salary
-- salary gap
-- Only include departments with at least 3 employees and a salary gap greater than $1,000.
-- Sort by salary gap from largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS 
salary_gap
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND MAX(salary) - MIN(salary) > 1000
ORDER BY salary_gap DESC;