# GROUP BY

The `GROUP BY` clause in SQL is used to group together rows with the same values in specified columns. This clause is generally used in conjunction with aggregate functions such as `SUM`, `AVG`, `MAX`, `MIN`, etc.

Syntax for `GROUP BY` clause

```sql
SELECT Country, COUNT(*)
FROM Customer
GROUP BY Country
```

**Key Points:**

- The `GROUP BY` clause must come after the `FROM` and `WHERE` clauses and before `HAVING`, `ORDER BY` and `LIMIT` clauses.
- The `GROUP BY` clause can group rows by one or more columns.
- The `GROUP BY` clause is often used with aggregate functions such as `SUM`, `AVG`, `MAX`, `MIN`, etc.
- The `GROUP BY` clause can also be used to eliminate duplicate rows from the result set.
- The `GROUP BY` clause is not required for all queries, but it is often a helpful and powerful tool for data analysis.
- We can only use columns in `SELECT` clause that are in `GROUP BY` clause or wrap them with aggregate function.

# HAVING

The **HAVING** clause is used in combination with the **GROUP BY** clause to filter groups based on a specified condition. It is used when you want to retrieve only those records that fulfill a specified condition.

Syntax:

```SQL
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
```

# Aggregate Functoins

In SQL, an aggregate function is a function where the values of multiple rows are grouped together to form a single value.

The most common aggregate functions are:

1. AVG() - This function returns the average value of a numeric column.

    Example:

    ```sql
    SELECT AVG(salary) FROM employees;
    ```

2. COUNT() - This function returns the number of rows in a table that matches a specified criteria.

    Example:

    ```sql
    SELECT COUNT(*) FROM employees WHE
    RE city = 'London';
    ```

3. MAX() - This function returns the maximum value of a numeric column.

    Example:

    ```sql
    SELECT MAX(salary) FROM employees;
    ```

4. MIN() - This function returns the minimum value of a numeric column.

    Example:

    ```sql
    SELECT MIN(salary) FROM employees;
    ```

5. SUM() - This function returns the sum of all the values of a numeric column.

    Example:

    ```sql
    SELECT SUM(salary) FROM employees;
    ```
