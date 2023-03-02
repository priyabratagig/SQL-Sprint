# INNER JOIN

The `INNER JOIN` statement is used to join two or more tables in a relational database. It returns rows when there is at least one match in both tables.

The `INNER JOIN` keyword selects all rows from both participating tables as long as there is a match between the columns in both tables. An `INNER JOIN` is a join of two or more tables that returns only those rows (records) that satisfy the join condition.

The `INNER JOIN` is an important and powerful SQL statement that allows you to combine data from multiple tables. It can be used to combine information from different tables based on a common column between them.

Some key points to remember when using `INNER JOIN`:

- The `INNER JOIN` keyword selects records that have matching values in both tables.
- The `INNER JOIN` returns only those rows that satisfy the join condition.
- The `INNER JOIN` can be used to combine information from multiple tables.
- The `INNER JOIN` clause must specify a common column that links both tables.

A simple INNER JOIN example:

Let's say we have two tables: customers and orders.

Table "customers":

| customer_id | customer_name |
| ----------- | ------------- |
| 1           | John Smith    |
| 2           | Jane Doe      |
| 3           | Joe Black     |

Table "orders":

| order_id | customer_id | order_total |
| -------- | ----------- | ----------- |
| 1        | 1           | 100.00      |
| 2        | 2           | 25.00       |
| 3        | 1           | 10.00       |
| 4        | 3           | 50.00       |

To get the customer name and order total for each order, we would use the following SQL statement:

```sql
SELECT customers.customer_name, orders.order_total
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;
```

This statement would return the following result set:

| customer_name | order_total |
| ------------- | ----------- |
| John Smith    | 100.00      |
| Jane Doe      | 25.00       |
| John Smith    | 10.00       |
| Joe Black     | 50.00       |
