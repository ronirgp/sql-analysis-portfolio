-- “Show each department's total number of employees, average salary, and highest salary. Only include departments
--  with at least 2 employees and where the highest salary is more than $500 above the department average.
--  Sort by the amount the highest salary is above the average, from largest to smallest.”
-- My solution 
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MAX(salary) - AVG(salary) AS
amount_above_average_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND MAX(salary) - AVG(salary) > 500 
ORDER BY amount_above_average_salary DESC;
