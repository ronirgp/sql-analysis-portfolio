SELECT department,
       COUNT(*)
FROM departments
JOIN salaries
ON departments.employee_id = salaries.employee_id
WHERE salary >= 1300
GROUP BY department;
