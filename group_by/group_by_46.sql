SELECT departments.department,
       COUNT(*) AS employees,
       MIN(salaries.salary) AS min_salary,
       AVG(salaries.salary) AS avg_salary,
       SUM(salaries.salary) AS total_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salaries.salary >= 1200
GROUP BY departments.department
HAVING COUNT(*) >= 2
   OR AVG(salaries.salary) >= 1500;