-- ============================================================
-- SECTION 1 — INSERT: Adding ONE record
-- ============================================================
-- Use INSERT INTO when you want to add a new row to a table.
-- Syntax: INSERT INTO table_name (col1, col2, ...) VALUES (val1, val2, ...);

INSERT INTO products (name, description, cost_price, selling_price)
VALUES ('Wireless Mouse', 'Ergonomic 2.4GHz wireless mouse with USB receiver', 3500.00, 6500.00);


-- ============================================================
-- SECTION 2 — INSERT: Adding FOUR records at once (bulk insert)
-- ============================================================
-- You can supply multiple value groups separated by commas in a
-- single INSERT statement. This is faster and cleaner than
-- running four separate INSERT commands.

INSERT INTO products (name, description, cost_price, selling_price)
VALUES
    ('Mechanical Keyboard',  'Compact TKL keyboard with blue switches',        12000.00, 22000.00),
    ('USB-C Hub',            '7-in-1 hub with HDMI, USB 3.0 and SD card slot',  8500.00, 15000.00),
    ('Laptop Stand',         'Adjustable aluminium stand for 13–17 inch laptops',4200.00,  9000.00),
    ('Webcam HD',            '1080p webcam with built-in noise-cancelling mic',  9800.00, 18500.00);


-- ============================================================
-- SECTION 3 — SELECT with LIMIT
-- ============================================================
-- LIMIT controls the maximum number of rows returned by a query.
-- This is useful when a table has thousands of rows and you only
-- need a preview or the "top N" results.

-- Return only the first 3 products
SELECT name, selling_price
FROM   products
LIMIT  3;


SELECT name, selling_price
FROM   products
LIMIT  2 offset 3;


-- ============================================================
-- SECTION 4 — SELECT with OFFSET
-- ============================================================
-- OFFSET skips a specified number of rows before returning results.
-- It is almost always paired with LIMIT to implement PAGINATION —
-- the technique of breaking large result sets into pages.




-- ============================================================
-- SECTION 5 — RELATIONAL (COMPARISON) OPERATORS
-- ============================================================
-- Relational operators compare two values and return TRUE or FALSE.
-- They are used inside WHERE clauses to filter rows.
--
--  Operator  | Meaning
--  --------- | ----------------------------
--  =         | Equal to
--  <>  or != | Not equal to
--  >         | Greater than
--  <         | Less than
--  >=        | Greater than or equal to
--  <=        | Less than or equal to
--  BETWEEN   | Within a range (inclusive)
--  LIKE      | Pattern match (% = wildcard)
--  IN        | Matches any value in a list
-- ============================================================

-- (=)  Products that cost exactly 8500
SELECT * FROM products WHERE cost_price = 8500.00;

-- (<>) Products whose name is NOT 'Webcam HD'
SELECT * FROM products WHERE name <> 'Webcam HD';

-- (>)  Products with a selling price above 15000
SELECT * FROM products WHERE selling_price > 15000.00;

-- (<)  Products that cost less than 5000
SELECT * FROM products WHERE cost_price < 5000.00;

-- (>=) Products with selling price 18000 or more
SELECT * FROM products WHERE selling_price >= 18000.00;

-- (<=) Products with cost price up to 9000
SELECT * FROM products WHERE cost_price <= 9000.00;



-- ============================================================
-- SECTION 6 — LOGICAL OPERATORS
-- ============================================================
-- Logical operators combine multiple conditions together.
--
--  Operator | Meaning
--  -------- | -------------------------------------------------
--  AND      | Both conditions must be TRUE
--  OR       | At least one condition must be TRUE
--  NOT      | Reverses/negates a condition (TRUE → FALSE)
-- ============================================================

-- (AND) Products that cost less than 10000 AND sell for more than 15000
--       (both conditions must hold — high margin items)
SELECT name, cost_price, selling_price
FROM   products
WHERE  cost_price < 10000.00 AND selling_price > 15000.00;

-- (OR)  Products whose cost is below 4000 OR whose selling price is above 20000
--       (either condition qualifies the row)
SELECT name, cost_price, selling_price
FROM   products
WHERE  cost_price < 4000.00 OR selling_price > 20000.00;

-- (NOT) Products that are NOT in the high price bracket (selling price NOT > 18000)
SELECT name, selling_price
FROM   products
WHERE  NOT selling_price > 18000.00;

