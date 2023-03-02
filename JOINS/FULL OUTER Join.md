# FULL OUTER Join

A full outer join combines the results of both left and right outer joins. It returns all rows from both tables, filling in missing values from either table with NULLs. This can be useful for finding records that don't appear in both tables, or for combining data from multiple tables into a single result set.

The key points for performing a full outer join are:

- Use the FULL OUTER JOIN keyword to specify a full outer join.
- Specify the columns for joining in the ON clause.
- All rows from both tables will be included in the result set, with NULLs for missing values from either table.

For example, consider two tables, A and B, that are to be joined using a full outer join:

Table A:

| ID | Name   |
|----|--------|
| 1  | Alice  |
| 2  | Bob    |
| 3  | Eve    |

Table B:

| ID | City   |
|----|--------|
| 1  | London |
| 2  | Paris  |
| 4  | Tokyo  |

The result of joining these two tables with a full outer join would be:

| ID | Name   | City   |
|----|--------|--------|
| 1  | Alice  | London |
| 2  | Bob    | Paris  |
| 3  | Eve    | NULL   |
| 4  | NULL   | Tokyo  |
