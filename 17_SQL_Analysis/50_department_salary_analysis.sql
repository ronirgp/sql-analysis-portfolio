-- Business Request

-- Management wants departments that have at least 2 employees, an average salary greater
--  than $1,500, and a salary gap of at least $1,000 between the highest- and lowest-paid employees.

-- Return:
-- Department ID
-- Employee count
-- Average salary
-- Highest salary
-- Lowest salary
-- Salary gap

-- Order by:
-- Salary gap descending
-- Average salary descending
-- Department ID ascending
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
HAVING COUNT(*) >= 2
AND AVG(salary) > 1500
AND   MAX(salary) - MIN(salary)  >= 1000

ORDER BY salary_gap DESC, average_salary DESC, department_id ASC;

