-- Interview Simulation #3
-- A company wants to identify departments with significant salary inequality.

-- Find departments where:
-- there are at least 3 employees
-- the salary difference between the highest-paid and lowest-paid employee is more than $1,000

-- Return:
-- department ID
-- employee count
-- average salary
-- highest salary
-- lowest salary
-- salary gap
-- Sort by salary gap, largest to smallest.
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
