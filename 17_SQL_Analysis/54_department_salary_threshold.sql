-- Business Request

-- Management wants departments where the average salary is at most $1,800.

-- Return:

-- department_id
-- average_salary

-- Order by average_salary ascending.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) <= 1800
ORDER BY average_salary ASC;