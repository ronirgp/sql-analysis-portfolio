-- Business Request
-- Management wants departments with at least 2 employees where the average salary is at least $1,500.

-- Return:
-- department_id
-- total_employees
-- average_salary

-- Order by average_salary descending.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND AVG(salary) >= 1500
ORDER BY average_salary DESC;
