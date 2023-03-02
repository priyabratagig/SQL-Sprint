# Cross Join

A Cross Join, also known as a Cartesian Product, is a type of join operation in SQL that produces the combination of every row from the two joined tables.

Syntax:

```sql
SELECT * 
FROM Table1 
CROSS JOIN Table2
```

Key Points:

- A Cross Join produces the combination of every row from two tables
- It does not require a condition for joining the tables
- It joins every row in one table with every row in another table
- It is also known as a Cartesian Product
- It should be used with caution as it can produce a large number of rows

**Orders**

| OrderID | CustomerID |
| ------- | ---------- |
|   1     |     10     |
|   2     |     20     |

**Products**

| ProductID | ProductName  |
| --------- | ------------ |
|   101     |  Pen         |
|   102     |  Pencil      |

The following SQL statement will return all the possible combinations of the Orders and Products tables:

```sql
SELECT Orders.OrderID, Products.ProductName
FROM Orders
CROSS JOIN Products;
```

The result of the above query would be:

| OrderID | ProductName  |
| ------- | ------------ |
|   1     |  Pen         |
|   1     |  Pencil      |
|   2     |  Pen         |
|   2     |  Pencil      |
