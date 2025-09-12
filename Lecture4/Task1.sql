-- Q1. Create a table called EMP_TEST with a column NAME having leading and trailing spaces.
CREATE TABLE EMP_TEST(name varchar(30));
INSERT INTO EMP_TEST values('    Mark   ');
INSERT INTO EMP_TEST values('     Anna*');
INSERT INTO EMP_TEST values('#Norhan     ');
INSERT INTO EMP_TEST values('   Ahmed   ');
INSERT INTO EMP_TEST values('#Arissu#');
INSERT INTO EMP_TEST values('    Mohamed    ');
-- Q2. Display all names using TRIM to remove both leading and trailing spaces.
SELECT trim(name) FROM EMP_TEST;
-- Q3. Use LTRIM to remove only leading spaces.
SELECT LTRIM(name) FROM EMP_TEST;
-- Q4. Use RTRIM to remove only trailing spaces.
SELECT RTRIM(name) FROM EMP_TEST;
-- Q5. Use TRIM to remove a specific character (e.g., ‘*’ or ‘#’) from both sides of a string.
SELECT trim('*' FROM name) FROM EMP_TEST;
SELECT trim('#' FROM name) FROM EMP_TEST;