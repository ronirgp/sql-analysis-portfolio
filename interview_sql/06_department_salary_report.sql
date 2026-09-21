-- Management wants to find departments where the lowest-paid employee earns at least $500 less than the department average.
-- Return:
-- department_id
-- average salary
-- lowest salary
-- amount the average is above the lowest salary

-- Only include departments where that difference is at least $500.
-- Sort by the difference largest to smallest.

SELECT department_id,
AVG(salary) AS average_salary,
MIN(salary) AS lowest_salary,
AVG(salary) - MIN(salary) AS
amount_above_average_lowest_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) - MIN(salary) >= 500
ORDER BY amount_above_average_lowest_salary DESC;
