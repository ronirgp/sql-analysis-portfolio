SELECT departments.department,
       COUNT(*) AS employees,
       SUM(salaries.salary) AS total_salary,
       AVG(salaries.salary) AS avg_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salaries.salary >= 1200
GROUP BY departments.department
HAVING COUNT(*) >= 1;