-- Business request:
-- Show employees who joined the company between January 1, 2023 and December 31, 2023, inclusive.
--  Return employee name, department ID, and joining date. Sort from oldest to newest.
-- My slution
SELECT name AS employee_name,
department_id,
joining_date
FROM employees
WHERE joining_date BETWEEN '2023-01-01'
AND 2023-12-31
ORDER BY joining_date ASC;
