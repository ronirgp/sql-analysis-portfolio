SELECT departments.department,
       COUNT(*) AS employees,
       AVG(salaries.salary) AS avg_salary,
       SUM(salaries.salary) AS total_salary,
       MIN(salaries.salary) AS min_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING AVG(salaries.salary) >= 1500
   OR MIN(salaries.salary) >= 1500;