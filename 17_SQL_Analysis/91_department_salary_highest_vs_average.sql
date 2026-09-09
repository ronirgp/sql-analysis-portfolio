-- Show departments where the highest-paid employee earns more than $800 above the department's average salary.
--  Return the department ID, average salary, highest salary, and the amount the highest salary 
-- is above the average. Sort by the amount above average from largest to smallest.
-- My solution
SELECT department_id,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS 
amount_above_average
FROM employees
GROUP BY department_id
HAVING MAX(salary) - AVG(salary) > 800
ORDER BY amount_above_average DESC;