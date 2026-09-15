-- Business request:
-- Management wants a report showing each department's total employees, average salary, and highest salary.

-- Only include departments where:

-- there are at least 2 employees, and
-- the highest salary is at least $500 above the department average.

-- Sort by the amount the highest salary is above the average, largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees
GROUP BY  department_id
HAVING COUNT(*) >= 2
AND MAX(salary) - AVG(salary) >= 500
ORDER BY amount_above_average_salary DESC;