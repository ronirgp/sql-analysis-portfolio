-- ===========================================
-- SQL Writing Exercise 87
-- Business Request:
-- The HR Director wants a list of all
-- departments that currently have employees.
-- Show:
-- - Department name
-- Do NOT show duplicate departments.
-- Use DISTINCT.
-- Sort alphabetically (A-Z).
-- ===========================================
-- My Solution 
  SELECT DISTINCT departments.department_name
  FROM departments
  ORDER BY departments.department_name ASC;
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  