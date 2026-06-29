SELECT departments.department,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING SUM(salaries.salary) > 2000;