-- Q1. Use REPLACE to replace the letter 'a' with '@' in the word 'database'.
SELECT REPLACE('database','a','@') FROM dual;
-- Q2. Use REPLACE to replace a full word in a string (e.g., "old" with "new").
SELECT REPLACE('hello world','orl','aaa') FROM dual;
-- Q3. Create a table PRODUCT with a product_name column, and insert 3 sample products.
CREATE TABLE product(product_name varchar(30));
INSERT INTO product VALUES ('phone');
INSERT INTO product VALUES ('laptop');
INSERT INTO product VALUES ('headphones');
-- Q4. Use LPAD to format product names to 15 characters by padding with '*' on the left.
SELECT LPAD(product_name,15,'*') FROM product;
-- Q5. Use RPAD to format product names to 15 characters by padding with '#' on the right.
SELECT RPAD(product_name,15,'#') FROM product;