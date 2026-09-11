-- “Show employees whose salary is higher than the average salary of their department AND lower than the highest
-- salary in their department. Return the employee name, department ID, employee salary, department average salary,
-- highest department salary, and salary difference above the department average. Sort by salary difference from largest to smallest.”
-- My solution
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id
) AS department_average_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
department_average_salary,
highest_salary,
employee_salary - department_average_salary AS 
salary_difference 
FROM salary 
 WHERE employee_salary > department_average_salary
AND employee_salary <  highest_salary
ORDER BY salary_difference DESC;


