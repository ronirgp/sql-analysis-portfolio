SELECT departments.department,
       COUNT(*) AS employees,
       AVG(salaries.salary) AS avg_salary,
       MAX(salaries.salary) AS max_salary,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1200
   AND MAX(salaries.salary) >= 1500;