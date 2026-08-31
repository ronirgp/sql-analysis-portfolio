-- Business Request
-- Management wants departments with at least 2 employees where the highest salary is at least $2,000.

-- Return:
-- department_id
-- total_employees
-- highest_salary

-- Order by highest_salary descending.
-- M y slution
SELECT department_id,
COUNT(*) AS total_employees,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) = 2
AND MAX(salary) >= 2000
ORDER BY  highest_salary DESC;