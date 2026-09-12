-- “Show departments where the highest salary is at least $800 higher than the department average salary.
--  Return the department ID, average salary, highest salary, and the amount the highest salary is above the average.
--  Sort by that amount from largest to smallest.”
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) >= 800
ORDER BY amount_above_average_salary DESC;