-- Challenge 20:
-- Write query to give the total number of employees in
-- each department as given by the department_id column
-- in the hcm.employees table.
-- Hints:
-- Use the COUNT aggregate function in the SELECT clause.
-- Also, use a GROUP BY clause. Note that all the challenges
-- in this lecture also require a GROUP BY clause. 

SELECT department_id, COUNT(*) AS Number_Of_Employees
FROM hcm.employees
GROUP BY department_id;

-- Challenge 21:
-- Write a query to give the average salary in each
-- department as given by the department_id column in the
-- hcm.employees table. Order the query result by average
-- salary from highest to lowest.
-- Hint:
-- Include the AVG aggregate function in the SELECT
-- clause.

SELECT department_id, AVG(salary) AS Average_Salary
FROM hcm.employees
GROUP BY department_id
ORDER BY Average_Salary;

-- Challenge 22:
-- Write a query to give the total number of products on hand at
-- each warehouse as given by the warehouse_id column in the
-- oes.inventories table. Also, limit the result to only
-- warehouses which have greater than 5,000 product items on
-- hand.
-- Hints:
-- Use the SUM aggregate function in the SELECT clause.
-- Include a HAVING clause in the query. The HAVING clause will
-- also have the SUM aggregate function.

SELECT warehouse_id, SUM(quantity_on_hand) AS Products_Inhand
FROM oes.inventories
GROUP BY warehouse_id
HAVING SUM(quantity_on_hand) > 5000;

-- Challenge 23:
-- What is the date of the most recent population count at
-- each locality in the bird.antarctic_populations table?
-- Hint:
-- Use the MAX aggregate function in the SELECT clause.

SELECT locality, MAX(date_of_count) AS Recent_Count
FROM bird.antarctic_populations
GROUP BY locality;

-- Challenge 24:
-- What is the date of the most recent population count for each
-- species at each locality in the bird.antarctic_populations
-- table?
-- Hint:
-- You will need to group by more than one column.

SELECT species_id, locality, MAX(date_of_count) Recent_Count
FROM bird.antarctic_populations
GROUP BY species_id, locality;