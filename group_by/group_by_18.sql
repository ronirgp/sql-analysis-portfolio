SELECT departments.department,
       COUNT(*) AS employees,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING COUNT(*) = 1;