SELECT departments.department,
       COUNT(*) AS employees,
       AVG(salaries.salary) AS avg_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING COUNT(*) >= 2;