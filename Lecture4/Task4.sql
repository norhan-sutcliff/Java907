-- Q1. Create a table STUDENTS with columns: name, marks.
CREATE TABLE students(name varchar(30),marks number);
-- Q2. Insert 5 sample students with marks.
INSERT INTO students values('Norhan',92);
INSERT INTO students values('Manar',80);
INSERT INTO students values('Alaa',64);
INSERT INTO students values('Sara',77);
INSERT INTO students values('Marian',79);
-- Q3. Use CASE to assign grades: 
--     >=90 => 'A', 80–89 => 'B', 70–79 => 'C', else => 'F'
SELECT name, CASE WHEN marks >= 90 THEN 'A' WHEN marks>=80 THEN 'B' WHEN marks>=70 THEN 'C' ELSE 'F' end AS grade FROM students;