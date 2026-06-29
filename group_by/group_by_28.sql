SELECT departments.department,
       COUNT(*) AS employees,
       MAX(salaries.salary) AS max_salary,
       AVG(salaries.salary) AS avg_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING MAX(salaries.salary) >= 1500;