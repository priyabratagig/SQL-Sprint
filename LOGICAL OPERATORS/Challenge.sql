-- Challenge 25:
-- Select employees from the hcm.employees table who live
-- in either Seattle or Sydney.
-- Hint:
-- Use the OR operator.

SELECT *
FROM hcm.employees
WHERE city = 'Seattle' OR city = 'Sydney';

-- Challenge 26:
-- Select employees who live in any of the following cities:
-- - Seattle
-- - Sydney
-- - Ascot
-- - Hillston
-- Hint:
-- Use the IN operator.

SELECT *
FROM hcm.employees
WHERE city IN ('Seattle', 'Sydney', 'Ascot', 'Hillston');

-- Challenge 27:
-- Select employees from Sydney who have a salary greater
-- than $200,000.
-- Hint:
-- Use the AND operator.

SELECT *
FROM hcm.employees
WHERE city = 'Sydney' AND salary > 200000;

-- Challenge 28:
-- Select employees who live in either Seattle or Sydney
-- and were also hired on or after 1st January 2019.
-- Hint:
-- Use both the OR and the AND logical operator.

SELECT *
FROM hcm.employees
WHERE (city = 'Seattle' OR city = 'Sydney') AND hire_date >= '20190101';

-- Challenge 29:
-- Select products from the oes.products table which do
-- not have a product category_id of either 1, 2, or 5.

SELECT *
FROM oes.products
WHERE category_id NOT IN (1,2,5);