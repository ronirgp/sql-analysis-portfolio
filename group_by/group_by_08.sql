SELECT department,
       SUM(salary),
       COUNT(*)
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
GROUP BY department;
