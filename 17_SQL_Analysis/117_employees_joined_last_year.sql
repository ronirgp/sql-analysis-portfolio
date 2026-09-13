-- “Show employees who joined the company within the last year. Return the employee name, department ID,
--  and joining date. Sort by joining date from newest to oldest.”
-- My solution
SELECT name AS employee_name,
 department_id,
 joining_date 
 FROM employees
 WHERE  joining_date  >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
 ORDER BY  joining_date DESC;