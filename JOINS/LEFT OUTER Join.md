# LEFT OUTER JOIN

A LEFT OUTER JOIN is a type of join in SQL that allows you to combine data from two or more tables. It is characterized by returning all of the rows from the left table, even if there are no matches in the right table.

**Key Points:**

- A LEFT OUTER JOIN returns all rows from the left table, even if there are no matches in the right table.
- The syntax for a LEFT OUTER JOIN is: SELECT columns FROM left_table LEFT OUTER JOIN right_table ON left_table.column = right_table.column
- The LEFT OUTER JOIN will return all rows from the left table, plus any matching rows from the right table.
- The LEFT OUTER JOIN can be used to combine data from multiple tables, allowing you to answer complex questions with one query.

Let's say we have two tables, `Table1` and `Table2`.

Table1

| ID | Name  |
|----|-------|
| 1  | John  |
| 2  | Mark  |
| 3  | Sarah |

Table2

| ID | Department  |
|----|-------------|
| 1  | Sales       |
| 3  | Marketing   |

We can use a LEFT OUTER JOIN to return all the rows from `Table1`, even if there are no matches in `Table2`:

```sql
SELECT Table1.ID, Table1.Name, Table2.Department
FROM Table1
LEFT OUTER JOIN Table2
ON Table1.ID = Table2.ID
```

This query will return the following result:

| ID | Name  | Department  |
|----|-------|-------------|
| 1  | John  | Sales       |
| 2  | Mark  | NULL        |
| 3  | Sarah | Marketing   |
