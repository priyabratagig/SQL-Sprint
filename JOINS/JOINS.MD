# JOINS

SQL provides many way to join two or more tables

- [Natural Join](./Narural%20Join.md)
- [INNER Join or `JOIN`](./Inner%20Join.md)
- Outer Joins
  - [LEFT OUTER JOIN or LEFT JOIN](./LEFT%20OUTER%20Join.md)
  - [RIGHT OUTER JOIN or RIGHT JOIN](./RIGHT%20OUTER%20Join.md)
  - [FULL OUTER JOIN or FULLL JOIN](./FULL%20OUTER%20Join.md)
- [Cross Join or Cartesian Product](./Cross%20Join.md)

### Self-Referencing Join

A self-referencing join is a type of join in which a table is joined to itself. It is used to compare values in a column with other values in the same column in the same table.

The syntax for a self-referencing join is as follows:

SELECT *
FROM table_name t1
JOIN table_name t2
ON t1.column_name = t2.column_name;

### Using Clause

The `USING` clause is used to specify the columns on which two or more tables can be joined. It is used in a `SELECT` statement to join one or more tables. The columns specified in the `USING` clause must have the same name and data type in all the tables.

### On Clause

The `ON` clause is used to specify the conditions for the `JOIN` operation. The `ON` clause compares the specified columns of the joined tables and returns only the rows that satisfy the condition. It is used in a `SELECT` statement to join one or more tables.

# Integrity constraints

**Integrity constraints** in SQL are used to ensure accuracy and consistency of data in a database. They are rules that are enforced to maintain the integrity of the data stored in the database. Some common types of integrity constraints are:

- **Primary Key Constraint**: A primary key constraint defines a column or a set of columns that uniquely identify a row in a table. Prevents NULL values and duplicate values or value sets.

- **Unique Constraint**: A unique constraint ensures that all values in a column or a set of columns are unique and no duplicates are allowed.

- **Foreign Key Constraint**: A foreign key constraint defines a relationship between two tables by linking the primary key of one table with the foreign key of another table. Forign key prevents deletion of linking key in a parent table.

- **Check Constraint**: A check constraint enforces a condition on the value of a column or a set of columns. It ensures that all values in the specified column(s) meet a certain condition.

- **Not Null Constraint**: A not null constraint ensures that all values in a specified column are not null.

# Relationships Between Tables

A **relationship** in a relational database is an association between two tables that have something in common.

Common relationships between database tables can be classified into three types:

1. **One-to-One**: A one-to-one relationship is a type of relationship where a single row from one table is related to a single row from another table.

2. **One-to-Many**: A one-to-many relationship is a type of relationship between two tables where one row from one table can be related to multiple rows from another table.

3. **Many-to-Many**: A many-to-many relationship is a type of relationship between two tables where multiple rows from one table can be related to multiple rows from another table. To model many-to-many realtion we use junction table or associative table.
