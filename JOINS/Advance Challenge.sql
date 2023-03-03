-- Challenge 33:
-- Write a query to return employee details for all employees as
-- well as the first and last name of each employee's manager.
-- Include the following columns:
-- - employee_id
-- - first_name
-- - last_name
-- - manager_first_name (alias for first_name)
-- - manager_last_name (alias for last_name)

SELECT e.employee_id, e.first_name, e.last_name, m.first_name AS manager_first_name, m.last_name AS manager_last_name
FROM hcm.employees AS e LEFT JOIN hcm.employees m ON e.manager_id = m.employee_id;

-- Challenge 34:
-- Write a query to return all the products at each warehouse.
-- Include the following attributes:
-- - product_id
-- - product_name
-- - warehouse_id
-- - warehouse_name
-- - quantity_on_hand

SELECT
    p.product_id,
    product_name,
    w.warehouse_id,
    warehouse_name,
    quantity_on_hand
FROM
    oes.inventories AS i LEFT JOIN oes.warehouses AS w
    ON i.warehouse_id = w.warehouse_id
    LEFT JOIN oes.products AS P
    ON i.product_id = p.product_id;

-- Challenge 35:
-- Write a query to return the following attributes for all
-- employees from Australia:
-- - employee_id
-- - first_name
-- - last_name
-- - department_name
-- - job_title
-- - state_province

SELECT
    employee_id,
    first_name,
    last_name,
    department_name,
    job_title,
    state_province
FROM hcm.employees AS e LEFT JOIN hcm.departments AS d
    ON e.department_id = d.department_id
    LEFT JOIN hcm.jobs AS j
    ON j.job_id = e.job_id
    JOIN hcm.countries AS c
    ON c.country_id = e.country_id
WHERE c.country_name = 'Australia';

-- Challenge 36:
-- Return the total quantity ordered of each product in each
-- category. Do not include products which have never
-- been ordered. Include the product name and category
-- name in the query. Order the results by category name
-- from A to Z and then within each category name order
-- by product name from A to Z.

SELECT
    category_name,
    p.product_name,
    SUM(quantity) AS total_quantity
FROM oes.order_items AS oi LEFT JOIN oes.products AS p
    ON oi.product_id = p.product_id
    LEFT JOIN oes.product_categories AS pc
    ON pc.category_id = p.category_id
GROUP BY category_name, product_name
ORDER BY category_name ASC, product_name ASC;

-- Challenge 37:
-- Return the total quantity ordered of each product in each
-- category. Include products which have never been
-- ordered and give these a total quantity ordered of 0.
-- Include the product name and category name in the
-- query. Order the results by category name from A to Z
-- and then within each category name order by product
-- name from A to Z.

SELECT
    category_name,
    p.product_name,
    SUM(COALESCE(quantity, 0)) AS total_quantity
FROM oes.order_items AS oi FULL JOIN oes.products AS p
    ON oi.product_id = p.product_id
    LEFT JOIN oes.product_categories AS pc
    ON pc.category_id = p.category_id
GROUP BY category_name, product_name
ORDER BY category_name ASC, product_name ASC;
