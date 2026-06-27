SELECT departments.department,
       SUM(salaries.salary) AS total_salary,
       AVG(salaries.salary) AS avg_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salaries.salary >= 1300
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1600;