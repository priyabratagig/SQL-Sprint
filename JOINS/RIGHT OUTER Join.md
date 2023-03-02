# RIGHT OUTER JOIN

A RIGHT OUTER JOIN returns all records from the right table (table2), and the matched records from the left table (table1).

The syntax for the RIGHT OUTER JOIN in SQL is:

```sql
SELECT column_name(s)
FROM table1
RIGHT OUTER JOIN table2
    ON table1.column_name = table2.column_name;
```

#### Key Points

- RIGHT OUTER JOIN returns all records from the right table (table2) and the matched records from the left table (table1).
- The RIGHT OUTER JOIN keyword returns all records from the right table (table2), even if there are no matches in the left table (table1).
- The RIGHT OUTER JOIN keyword combines each row from the right table (table2) with every row from the left table (table1).
- The result is NULL in the left side when there is no match.

For example, consider the following two tables:

**Table1**

| ID | NAME |
|----|------|
|  1 | John |
|  2 | Mary |

**Table2**

| ID | COLOR |
|----|-------|
|  1 | Blue  |
|  3 | Red   |

A RIGHT OUTER JOIN between these two tables will return the following result:

| ID | NAME | COLOR |
|----|------|-------|
|  1 | John | Blue  |
|  2 | Mary | NULL  |
|  3 | NULL | Red   |
