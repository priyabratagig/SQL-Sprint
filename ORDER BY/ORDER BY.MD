# ORDER BY

The `ORDER BY` clause is used in SQL to sort the results of a query in ascending or descending order based on specified columns. The basic syntax is:

```SQL
SELECT [column1, column2, ...] FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

The `ORDER BY` clause will sort the results in ascending order by default. To sort the results in descending order, the `DESC` keyword is used after the column name. For example, the following query will sort the results by column1 in descending order and then by column2 in ascending order:

```SQL
SELECT [column1, column2, ...] FROM table_name
ORDER BY column1 DESC, column2 ASC;
```

# TOP()

The `TOP` function is used in SQL to limit the number of results returned by a query. The basic syntax is:

```sql
SELECT TOP number [column1, column2, ...] FROM table_name;
```

Where `number` is the number of records to be returned. For example, the following query will return the top 10 records from the table:

```sql
SELECT TOP 10 [column1, column2, ...] FROM table_name;
```
