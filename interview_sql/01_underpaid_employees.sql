-- Interview SQL — #1
-- Find employees whose salary is at least $300 below their department's average -- salary.

-- Return:
-- employee name
-- department ID
-- employee salary
-- department average salary
-- difference between employee salary and department average

-- Sort from the largest negative difference to the smallest negative difference.
WITH salary AS
(SELECT name AS employee_name,
department_id,
salary AS employee_salary,
AVG(salary) OVER(PARTITION BY department_id
) AS department_average_salary
FROM employees)
SELECT employee_name,
department_id,
employee_salary,
 department_average_salary, 
 employee_salary - department_average_salary AS 
 difference_between_employee_average_salary
 FROM salary 
 WHERE employee_salary - department_average_salary <= -300
 ORDER BY  difference_between_employee_average_salary DESC;
