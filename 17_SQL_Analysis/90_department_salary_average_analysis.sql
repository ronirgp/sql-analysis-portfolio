-- Show departments where the average salary is greater than $1,600 and the highest-paid employee
--  earns at least $700 more than the department average. Return the department ID, average salary,
--  highest salary, and the amount the highest salary is above the average. 
-- Sort by that amount from largest to smallest.
SELECT department_id,
       AVG(salary) AS average_salary,
       MAX(salary) AS highest_salary,
       MAX(salary) - AVG(salary) AS amount_above_average
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 1600
   AND MAX(salary) - AVG(salary) >= 700
ORDER BY amount_above_average DESC;