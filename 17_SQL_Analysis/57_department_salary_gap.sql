-- Business Request
-- Management wants departments where at least 2 employees work and the 
-- difference between the highest and lowest salary is at least $800.

-- Return:
-- department_id
-- total_employees
-- highest_salary
-- lowest_salary
-- salary_gap

-- Order by salary_gap descending.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS
salary_gap
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND MAX(salary) - MIN(salary) >= 800
ORDER BY salary_gap DESC;