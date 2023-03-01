
# SQL Collation

SQL Collation refers to the set of rules used to compare characters in a character set. This comparison is used to determine the order in which data is stored, and it also affects the way data is searched and sorted. SQL collations can be used to customize the way data is stored, searched, and sorted in a database.

Different SQL collations can be specified for different databases, tables, and columns. This allows for a great deal of flexibility when creating and managing databases. Different collations can be used to ensure that data is stored and sorted in the most efficient way possible.

For example, if a database is primarily used for storing names and addresses, a case-insensitive collation can be used to ensure that all characters are treated the same regardless of case. Or, a language-specific collation can be used to ensure that data is sorted according to the rules of the language in which it is written.

SQL collations are typically defined at the server level, and they can be changed at any time. It is important to be aware of the implications of changing collations and to choose a collation that is appropriate for the data being stored. Using the wrong collation can lead to data being

# The INFORMATION_SCHEMA

The INFORMATION_SCHEMA is an ANSI/ISO standard set of views that act as a read-only system catalog in a relational database management system (RDBMS). It contains a set of tables with metadata about all the other objects inside the RDBMS.

The INFORMATION_SCHEMA consists of a number of views that allow you to query information about the tables, columns, data types, and other objects in a database.

For example, the following query returns a list of all the tables in the current database:

```sql
SELECT * 
FROM INFORMATION_SCHEMA.TABLES
```

The output of the query would be a list of tables in the current database, including the table name, owner, creation date and other information.

# ESCAPE KEYWORD

The **ESCAPE** keyword is used in SQL queries to escape special characters in a string. It is used to indicate that a character in the string should be treated as an ordinary character and not as a wildcard or special character.

For example, if you wanted to search for the string "The dog's tail", you would use the following query:

```sql
SELECT * FROM table WHERE string LIKE '%The dog\'s tail%' ESCAPE '\';
```

This query will search for the exact phrase "The dog's tail" and not any other phrase that might include the character ' (such as "The dog's tale").
