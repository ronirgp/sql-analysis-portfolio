SELECT departments.department,
       COUNT(*) AS employees,
       AVG(salaries.salary) AS avg_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salaries.salary >= 1300
GROUP BY departments.department
HAVING COUNT(*) >= 1;