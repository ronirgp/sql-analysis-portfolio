-- An HR manager asks:

-- “I need to see each department's total number of employees, average salary, and highest salary. 
-- Only show departments that have at least 2 employees and an average salary above $1,500. 
-- Sort the results by average salary from highest to lowest.”
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*)  >= 2
AND AVG(salary) > 1500
ORDER BY average_salary DESC;