-- Q1. Display current date in the format 'DD-MON-YYYY'.
SELECT to_char(sysdate,'DD-MON-YYYY') FROM dual;
-- Q2. Display current date in the format 'Month YYYY'.
SELECT to_char(sysdate,'Month YYYY') FROM dual;
-- Q3. Convert a number to character using TO_CHAR with formatting (e.g., 12345.67 as '12,345.67').
SELECT to_char(12345.67,'999,999.99') FROM dual;
-- Q4. Show salary formatted with a currency symbol.
SELECT to_char(salary,'$999,999') FROM EMPLOYEES;
