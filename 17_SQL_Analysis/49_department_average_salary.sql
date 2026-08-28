-- Business Request

-- Management wants departments whose average employee salary is between $1,500 and $2,000, inclusive.

-- Return:

-- Department ID
-- Average salary

-- Order by average salary descending.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) BETWEEN 1500 AND 2000
ORDER BY  average_salary DESC;