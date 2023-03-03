-- Challenge 30:
-- Write a query to return the following attributes for employees who
-- belong to a department:
-- - employee_id
-- - first_name
-- - last_name
-- - salary
-- - department_name
-- Hints:
-- Get department_name from the hcm.departments table. Get all other
-- attributes from the hcm.employees table. Use an INNER JOIN
-- between the two tables. This is because you are to only include
-- employees who belong to a department. 

SELECT employee_id, first_name, last_name, salary, department_name
FROM hcm.employees AS e INNER JOIN hcm.departments AS D ON e.department_id = d.department_id;

-- Challenge 31:
-- Write a query to return the following attributes for all
-- employees, including employees who do not belong to a
-- department:
-- - employee_id
-- - first_name
-- - last_name
-- - salary
-- - department_name
-- Hint:
-- Similar solution to first challenge except this time you will
-- need to use an outer join.

SELECT employee_id, first_name, last_name, salary, department_name
FROM hcm.employees AS e LEFT OUTER JOIN hcm.departments AS d ON e.department_id = d.department_id;

-- Challenge 32:
-- Write a query to return the total number of employees in
-- each department. Include the department_name in the
-- query result. Also, include employees who have not been
-- assigned to a department.
-- Hint:
-- You will need to use an outer join as well as a group by
-- clause.

SELECT e.department_id AS department_id, department_name, COUNT(*) AS Number_Of_Employees
FROM hcm.departments AS d RIGHT JOIN hcm.employees AS e ON d.department_id = e.department_id
GROUP BY e.department_id, department_name;
