-- Business Request
-- Management wants a department-level salary summary.
-- For each department, show:
-- department_id
-- total employees
-- total salary
-- average salary
-- highest salary
-- lowest salary
-- Only include departments where:
-- there are at least 2 employees
-- total salary is greater than 3000
-- Sort by:
-- total salary DESC
-- department_id ASC
-- My solution 

SELECT department_id,
COUNT(*) AS total_employees,
SUM(salary) AS total_salary,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND SUM(salary) > 3000
ORDER BY total_salary DESC, department_id ASC;
