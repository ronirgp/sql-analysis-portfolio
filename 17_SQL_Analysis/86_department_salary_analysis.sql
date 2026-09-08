-- Show each department's number of employees, average salary, lowest salary, and highest salary.
--  Only include departments with at least 3 employees and an average salary of at least $1,700. 
-- Sort by highest salary from largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MIN(salary) AS lowest_salary,
MAX(salary) AS highest_salry
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 3
AND AVG(salary) >= 1700
ORDER BY highest_salry DESC;
