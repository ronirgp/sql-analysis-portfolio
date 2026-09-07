-- Find departments where:
-- the department has at least 3 employees
-- the highest salary is at least $1,000 above the lowest salary
-- the average salary is more than $1,500

-- Return:
-- department ID
-- employee count
-- average salary
-- highest salary
-- lowest salary
-- salary gap
-- Only return departments meeting all three conditions.
-- Order by salary_gap descending, then average_salary descending.
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
AND MAX(salary) - MIN(salary) >= 1000
AND AVG(salary) > 1500
ORDER BY salary_gap DESC, average_salary DESC;