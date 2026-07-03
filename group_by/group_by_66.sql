SELECT departments.department,
       COUNT(*) AS employees,
       SUM(salaries.salary) AS total_salary,
       AVG(salaries.salary) AS avg_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING SUM(salaries.salary) >= 3000
   OR AVG(salaries.salary) >= 1500
   OR MAX(salaries.salary) >= 1500;