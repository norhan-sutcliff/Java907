--1. Character Functions – Part 3 (TRIM, LTRIM, RTRIM)
--Create a table customers with a full_name column. Insert names with extra spaces at the beginning and/or end.
CREATE TABLE customers(full_name varchar(30));
INSERT INTO customers values('    Norhan');
INSERT INTO customers values('Ahmed    ');
INSERT INTO customers values('    Mona    ');
--Write a query to remove both leading and trailing spaces from the names using TRIM.
SELECT trim(full_name) FROM customers;
--Display only the names with leading spaces removed using LTRIM.
SELECT Ltrim(full_name) FROM customers;
--Display only the names with trailing spaces removed using RTRIM.
SELECT RTrim(full_name) FROM customers;
--Trim specific characters (e.g., $, *, or #) from both sides of a given string.
SELECT RTRIM(LTrim('*#*#gttnt$$$$$$','#$*'),'#$*') FROM dual;
----------------------
--2. Character Functions – Part 4 (REPLACE, LPAD, RPAD)
--Replace all occurrences of the letter 'o' with '0' in the word “promotion”.
SELECT REPLACE('promotion','o','0') FROM dual;
--Replace the word “basic” with “advanced” in the sentence “This is a basic course”.
SELECT replace('This is a basic course','basic','advanced') FROM dual;
--Create a departments table with dept_name column. Insert at least 3 department names.
CREATE TABLE department(dept_name varchar(15));
INSERT INTO DEPARTMENT values('IT');
INSERT INTO DEPARTMENT values('HR');
INSERT INTO DEPARTMENT values('Sales');
--Format each department name to 15 characters by padding with ‘*’ on the left using LPAD.
SELECT LPAD(dept_name,15,'*') FROM department;
--Format each department name to 15 characters by padding with ‘-’ on the right using RPAD.
SELECT RPAD(dept_name,15,'-') FROM department;
--------------------------------
--3. TO_CHAR Function
--Display the current date in the format DD-MON-YYYY.
SELECT to_char(sysdate,'DD-MON-YYYY') FROM dual;
--Display the current date in the format Day, Month YYYY.
SELECT to_char(sysdate,'Day, Month YYYY') FROM dual;
--Convert a number to a formatted string with commas and two decimal places using TO_CHAR.
SELECT to_char(1234.567,'999,999.99') FROM dual;
--Format an employee’s salary to include a currency symbol using TO_CHAR.
SELECT to_char(salary,'$99999999') FROM EMPLOYEES;
--Display system date in the format: YYYY/MM/DD HH24:MI:SS.
SELECT to_char(sysdate,'YYYY/MM/DD HH24:MI:SS') FROM dual;
----------------------------------------
--4. Oracle Conditional Expressions – CASE Expressions
--Create a students table with name and score columns. Insert at least 5 records.
create TABLE students(name varchar(15), score number);
INSERT INTO students values('Norhan',92);
INSERT INTO students values('Manar',80);
INSERT INTO students values('Alaa',64);
INSERT INTO students values('Sara',77);
INSERT INTO students values('Marian',79);
--Write a query using CASE to assign grades based on the score:
--90 and above: A
--80–89: B
--70–79: C
--Below 70: F
SELECT name, CASE WHEN score >= 90 THEN 'A' WHEN score>=80 THEN 'B' WHEN score>=70 THEN 'C' ELSE 'F' end AS score FROM students;
--Modify the query to display “Pass” if score is 60 or more, otherwise “Fail”.
--Use CASE to display a message for each student:
SELECT CASE WHEN score >= 60 THEN 'Pass' ELSE 'Fail' END AS status FROM STUDENTS ;
--"Excellent" for A, "Good" for B, "Average" for C, and "Needs Improvement" for F.
SELECT name, CASE WHEN score >= 90 THEN 'Excellent' WHEN score>=80 THEN 'Good' WHEN score>=70 THEN 'Average' ELSE 'Needs Improvement' end AS score FROM students;
--Write a CASE expression using system date to return the name of the day (e.g., “Today is Monday”).
SELECT 'Today is '||to_char(sysdate, 'Day') FROM dual;
------------------------------
--5. Oracle Conditional Expressions – DECODE Function
--Use DECODE to return grade letters ('A', 'B', 'C', 'F') based on specific score values (e.g., 100 = A, 90 = B, etc.).
SELECT name, Decode(floor(score/10), 10 ,'A', 9 , 'B' , 8 , 'C' , 'F') AS score FROM students;
--Create a status_log table with a status_code column containing values like ‘N’, ‘I’, ‘C’.
CREATE TABLE status_log(status_code char);
INSERT INTO status_log VALUES('N');
INSERT INTO status_log VALUES('I');
INSERT INTO status_log VALUES('C');
--Use DECODE to convert:
--‘N’ → ‘New’
--‘I’ → ‘In Progress’
--‘C’ → ‘Completed’
SELECT decode(status_code ,'N','New','I','In Progress','C','Completed') FROM status_log;
--Use DECODE to check if a product’s quantity is 0, and display “Out of Stock”, otherwise “Available”.
CREATE TABLE PRODUCTS (product_quantity NUMERIC(3,0));
INSERT INTO PRODUCTS values(45);
INSERT INTO PRODUCTS values(100);
INSERT INTO PRODUCTS values(0);
INSERT INTO PRODUCTS values(22);
INSERT INTO PRODUCTS values(70);
SELECT decode(product_quantity , 0,'Out of Stock', 'Available') FROM products;
--Write a query using DECODE to display a bonus:
--If department is ‘HR’ → 500
--If department is ‘IT’ → 1000
--If department is ‘Sales’ → 1500
--Else → 300
SELECT decode(dept_name , 'HR',500, 'IT',1000 , 'Sales',1500,300) bonus FROM DEPARTMENT;
