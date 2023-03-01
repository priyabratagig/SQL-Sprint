# WHERE

1. Filtering data from a large set

    The `WHERE` clause is used in SQL to filter data from a large set of results. This clause is typically used to select one or more records from a table. For example, the following query will select all records from the `customers` table where the `city` field is equal to 'London':

    ```sql
    SELECT * FROM customers WHERE city = 'London'
    ```

2. Joining tables

    The `WHERE` clause is also used in SQL to join two or more tables together. This clause is used to specify which records should be included in the result set. For example, the following query will join the `customers` and `orders` tables, and select all records where the `customer_id` field in the `customers` table is equal to the `customer_id` field in the `orders` table:

    ```sql
    SELECT * FROM customers
    INNER JOIN orders
    ON customers.customer_id = orders.customer_id
    ```

3. Specifying conditions

    The `WHERE` clause is also used to specify conditions for the query. This clause can

# Comparison operators

Comparison operators are used to compare values in SQL. They are used in the `WHERE` clause of an SQL statement to filter data for a specific condition.

The following comparison operators are available in SQL:

- `=` : Equal to
- `<>` : Not equal to
- `>` : Greater than
- `<` : Less than
- `>=` : Greater than or equal to
- `<=` : Less than or equal to
- `BETWEEN` : Between two values
- `LIKE` : Search for a pattern
- `IN` : To specify multiple possible values for a column
- `IS` : Ued to compare two values and check if they are equal
- `NOT` : Used to compare two values and check if they are not equal

# NULL Value Hadndling

## nvl

`nvl()` is a function in Oracle that allows you to replace a `NULL` value with another value. It takes two arguments, the first being the value to be tested and the second the value to be returned if the first argument is `NULL`.

## isnull

`isnull()` is a function in SQL Server that allows you to test if an expression is `NULL` and if it is, returns an alternative value. It takes two arguments, the first being the expression to be tested and the second the expression to be returned if the first argument is `NULL`.

## coalesce

`coalesce()` is a function in most databases that allows you to find the first non-null value from a list of expressions and return it. It takes two or more arguments, and returns the first non-null value from the list. If all of the arguments are `NULL`, then `NULL` is returned.
