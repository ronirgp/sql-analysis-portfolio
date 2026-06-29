SELECT departments.department,
       COUNT(*) AS employees,
       AVG(salaries.salary) AS avg_salary,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING SUM(salaries.salary) >= 3000;