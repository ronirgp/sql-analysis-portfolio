SELECT departments.department,
       COUNT(*) AS employees,
       SUM(salaries.salary) AS total_salary,
       AVG(salaries.salary) AS avg_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1600
   OR MAX(salaries.salary) >= 2000;