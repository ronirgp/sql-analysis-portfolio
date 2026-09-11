-- “Show each department's total number of employees, average salary, and highest salary.
--  Only include departments with at least 2 employees and an average salary of at least $1,500.
--  Sort by average salary from highest to lowest.”
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS avergae_salary,
MAX(salary) AS highest_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 2
AND AVG(salary) >= 1500
ORDER BY avergae_salary DESC;