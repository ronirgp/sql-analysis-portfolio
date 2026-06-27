SELECT departments.department,
       COUNT(*) AS employees,
       MIN(salaries.salary) AS min_salary,
       MAX(salaries.salary) AS max_salary
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY departments.department
HAVING MIN(salaries.salary) >= 1300;