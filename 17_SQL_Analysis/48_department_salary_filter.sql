-- Business Request

-- Management wants departments where the total salary is greater than $4,000.

-- Return:

-- Department ID
-- Total salary

-- Order by total salary descending.
SELECT department_id,
SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) > 4000
ORDER BY total_salary DESC;