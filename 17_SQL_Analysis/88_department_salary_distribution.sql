-- Show each department's total number of employees, average salary, highest salary, and lowest salary.
--  Only include departments where the highest salary is at least $1,000 higher than the lowest salary 
-- and the department has at least 2 employees. Sort by the salary gap from largest to smallest.
-- My solution
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary,
MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,
MAX(salary) - MIN(salary) AS 
salary_gap
FROM employees
GROUP BY department_id
HAVING MAX(salary) - MIN(salary) >= 1000
AND COUNT(*) >= 2
ORDER BY salary_gap DESC;