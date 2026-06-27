SELECT departments.department,
       AVG(salaries.salary) AS avg_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1500;