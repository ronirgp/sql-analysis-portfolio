-- Business Request
-- Management wants to identify departments where the highest-paid employee earns more than $2,000.

-- Return:
-- Department ID
-- Highest salary

-- Only return departments meeting the requirement.

-- Order by highest salary descending.
-- My solution
SELECT department_id,
MAX(salary) AS highest_salary 
FROM employees
GROUP BY department_id
HAVING MAX(salary) > 2000
ORDER BY  highest_salary DESC;
