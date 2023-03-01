-- Challenge:
-- Select products from the oes.products table which have
-- a price greater than $100.

SELECT *
FROM oes.products
WHERE list_price > 100;

-- Challenge:
-- Select all orders from the oes.orders table which have
-- not yet been shipped.
-- Hint:
-- These are orders where the shipped date is null.

SELECT *
FROM oes.orders
WHERE shipped_date IS NULL;

-- Challenge:
-- Select all orders from the oes.orders table which were
-- placed on the 26th of February 2020.
-- Hint:
-- In SQL Server, when querying a column of data type
-- DATE, you can use the format ‘YYYYMMDD’. For example,
-- the 25th of April 2020 would be written as '20200425'

SELECT *
FROM oes.orders
WHERE order_date = '20200226';

-- Challenge:
-- Select all orders from the oes.orders table which were
-- placed on or after the 1st of January 2020.
-- Hint:
-- When using comparison operators with dates, an old
-- date is considered “smaller” than a newer date.
-- e.g. '19900101' < '20200101’
-- Later dates are greater dates.

SELECT *
FROM oes.orders
WHERE order_date >= '20200101';