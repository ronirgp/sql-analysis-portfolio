-- Business request:
-- Find departments with at least 3 employees where the average salary is more than $1700.

-- Show:
-- department ID
-- employee count
-- average salary
-- highest salary
-- lowest salary
-- salary gap between the highest and lowest salary
-- Sort by salary gap from largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS salary_gap
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND AVG(salary) > 1700
ORDER BY salary_gap DESC;