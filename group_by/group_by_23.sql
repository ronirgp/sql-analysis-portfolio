SELECT departments.department,
       COUNT(*) AS employees,
       MIN(salaries.salary) AS min_salary,
       AVG(salaries.salary) AS avg_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1500;