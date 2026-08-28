-- Business Request
-- Management wants a list of departments that have more than 2 employees.

-- Return:
-- Department ID
-- Number of employees
-- Only return departments with more than 2 employees.

-- Order by employee count descending,
--  then department ID ascending.

-- My solution

SELECT department_id,
COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2

ORDER BY total_employees DESC, department_id ASC;
