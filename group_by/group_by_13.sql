SELECT departments.department,
       MIN(salaries.salary) AS min_salary,
       MAX(salaries.salary) AS max_salary,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING MAX(salaries.salary) >= 1500;