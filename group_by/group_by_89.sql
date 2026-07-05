SELECT departments.department,
       COUNT(*) AS employees,
       SUM(salaries.salary) AS total_salary,
       AVG(salaries.salary) AS avg_salary,
       MIN(salaries.salary) AS min_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salaries.salary >= 1200
GROUP BY departments.department
HAVING COUNT(*) >= 2
   OR MAX(salaries.salary) >= 2000
   OR AVG(salaries.salary) >= 1500;