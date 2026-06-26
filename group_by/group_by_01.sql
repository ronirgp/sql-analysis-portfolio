SELECT department,
       COUNT(*)
FROM departments
GROUP BY department;
