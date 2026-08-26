-- Business Request:

-- Management wants departments whose average salary is greater than $1,500 and that have at least 2 employees.

-- Return:

-- department ID
-- employee count
-- average salary

-- Order by average salary descending
-- My solution
SELECT department_id,
COUNT(*) AS total_employees, 
AVG(salary) AS average_salary 
FROM employees
GROUP BY department_id
HAVING  average_salary > 1500
AND COUNT(*) >= 2
ORDER BY average_salary DESC;
