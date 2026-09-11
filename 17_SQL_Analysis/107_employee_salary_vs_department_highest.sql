-- “Show employees whose salary is at least $500 lower than the highest salary in their department.
--  Return the employee name, department ID, employee salary, highest department salary, and the salary
--  difference. Sort by salary difference from smallest to largest.”
-- My solution 
WITH salary AS 
(
SELECT name AS employee_name,
department_id,
salary AS employee_salary,
MAX(salary) OVER(PARTITION BY department_id
) AS highest_department_salary
FROM employees
)
SELECT employee_name,
department_id,
employee_salary,
highest_department_salary,
employee_salary - highest_department_salary AS 
salary_difference
FROM salary 
WHERE employee_salary - highest_department_salary <= -500
ORDER BY salary_difference ASC;
