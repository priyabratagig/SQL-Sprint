-- Challenge 16:
-- Select countries from the hcm.countries table which
-- start with the letter ‘N’.
-- Hint:
-- Use the LIKE operator and the % wildcard.

SELECT *
FROM hcm.countries
WHERE country_name LIKE 'N%';

-- Challenge 17:
-- Select customers from the oes.customers table who
-- have a Gmail email address.

SELECT *
FROM oes.customers
WHERE email LIKE '%@gmail.com';

-- Challenge 18:
-- Select product names from the oes.products table
-- which contain the word ‘mouse’ anywhere within the
-- product name.

SELECT product_name
FROM oes.products
WHERE product_name LIKE '%mouse%';

-- Challenge 19:
-- Select all product names from the oes.products table
-- which end in a number.

SELECT product_name
FROM oes.products
WHERE product_name LIKE '%[0-9]';