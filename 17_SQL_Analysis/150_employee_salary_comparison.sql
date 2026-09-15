WITH salary AS (
    SELECT 
        name AS employee_name, 
        department_id, 
        salary AS employee_salary, 
        MAX(salary) OVER (PARTITION BY department_id) AS highest_department_salary, 
        AVG(salary) OVER (PARTITION BY department_id) AS department_average_salary 
    FROM employees
) 
SELECT 
    employee_name, 
    department_id, 
    employee_salary, 
    highest_department_salary, 
    department_average_salary, 
    employee_salary - department_average_salary AS salary_difference_from_average_salary 
FROM salary 
WHERE employee_salary - highest_department_salary <= -500 
   OR employee_salary - department_average_salary >=  400 
ORDER BY salary_difference_from_average_salary DESC;