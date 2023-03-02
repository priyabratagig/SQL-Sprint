# Natural Join

A natural join is a type of join in SQL that combines two or more tables by matching their common columns.

A natural join will only include rows that match the specified criteria, and any columns that appear in both tables will only appear once in the result.

The key points of a natural join are:

- Only rows that match the specified criteria will be included in the result set.
- Any columns that appear in both tables will only appear once in the result set.
- The join condition is based on the same column names appearing in both tables.
- The join condition can be combined with other conditions in the WHERE clause.
- The order of the tables in the join clause does not matter, as the join condition is based on column names.
For example, if we have two tables `Companies` and `Addresses`:

`Companies`

| Company_ID | Company_Name  |
| ---------- | ------------- |
| 1          | Apple         |
| 2          | Microsoft     |
| 3          | Amazon        |

`Addresses`

| Company_ID | Street       | City    |
| ---------- | ------------- | ------- |
| 1          | 1 Infinite Loop| Cupertino |
| 2          | 1 Microsoft Way| Redmond |
| 3          | 410 Terry Ave N| Seattle |

We can perform a natural join on these two tables:

```sql
SELECT * 
FROM Companies 
NATURAL JOIN Addresses;
```

This will produce the following output:

| Company_ID | Company_Name  | Street       | City    |
| ---------- | ------------- | ------------ | ------- |
| 1          | Apple         | 1 Infinite Loop| Cupertino |
| 2          | Microsoft     | 1 Microsoft Way| Redmond |
| 3          | Amazon        | 410 Terry Ave N| Seattle |
