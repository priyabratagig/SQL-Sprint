# LOGICAL OPERATORS

__AND__

The AND operator is used to filter records based on more than one condition.

__Syntax__

```SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

__OR__

The OR operator is used to filter records based on more than one condition.

__Syntax__

```SQL
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
```

__NOT__

The NOT operator is used to exclude certain records from a result set.

__Syntax__

```SQL
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
```

# Operator Precedence

1. Parentheses: `()`
2. Arithmetic Operators: `+`, `-`, `*`, `/`
3. Comparison Operators: `=`, `>`, `<`, `>=`, `<=`, `<>`
4. Logical Operators: `AND`, `OR`, `NOT`
5. Bitwise Operators: `&`, `|`, `^`, `~`
6. String Operators: `LIKE`, `IN`, `BETWEEN`
7. Set Operators: `UNION`, `INTERSECT`, `MINUS`
