-- Q1. Use DECODE to achieve the same result as the CASE example above.
SELECT name, Decode(floor(marks/10), 9 ,'A',8 , 'B' , 7 , 'C' , 'F') AS grade FROM students;
-- Q2. Create a table ORDERS with a column status ('P', 'S', 'D').
CREATE TABLE orders (status char);
INSERT INTO orders values('P');
INSERT INTO orders values('S');
INSERT INTO orders values('D');
-- Q3. Use DECODE to display full form of status:
--     'P' => 'Pending', 'S' => 'Shipped', 'D' => 'Delivered'
SELECT decode(status,'P', 'Pending', 'S' , 'Shipped', 'D' , 'Delivered','Undefined') AS Status FROM orders;