-- Ensure we are using the correct database
USE alx_book_store;

-- Select full description of the table 'books' without using DESCRIBE or EXPLAIN
SELECT COLUMN_NAME AS 'Field',
       COLUMN_TYPE AS 'Type',
       IS_NULLABLE AS 'Null',
       COLUMN_KEY AS 'Key',
       COLUMN_DEFAULT AS 'Default',
       EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'books'
ORDER BY ORDINAL_POSITION;
