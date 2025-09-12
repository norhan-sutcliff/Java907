--1. AVG Function
--Question:
--Write an SQL query to calculate the average salary of all employees from the EMPLOYEES table.
SELECT AVG(NVL(salary,0)) FROM EMPLOYEES;
--2. COUNT Function
--Question:
--Write an SQL query to count the total number of employees in the EMPLOYEES table.
SELECT count(*) FROM employees;
--3. MAX Function
--Question:
--Write an SQL query to find the maximum salary offered in the EMPLOYEES table.
SELECT MAX(salary) FROM EMPLOYEES;
--4. MIN Function
--Question:
--Write an SQL query to find the minimum salary offered in the EMPLOYEES table.
SELECT MIN(salary) FROM EMPLOYEES;
--5. SUM Function
--Question:
--Write an SQL query to calculate the total salary that the company pays to all employees.
SELECT SUM(salary) FROM EMPLOYEES;
--6. GROUP BY Clause (Part 1)
--Question:
--Write an SQL query to display the department ID and the average salary of employees grouped by department from the EMPLOYEES table.
SELECT DEPARTMENT_ID,avg(NVL(salary,0)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ;
--7. GROUP BY Clause (Part 2)
--Question:
--Write an SQL query to show job ID and the total number of employees for each job title in the EMPLOYEES table.
SELECT JOB_ID ,count(*) FROM EMPLOYEES GROUP BY JOB_ID ;
--8. HAVING Clause
--Question:
--Write an SQL query to display the department ID and the total salary of employees only for departments where the total salary exceeds 50,000.
--(Hint: Use GROUP BY and HAVING together.)
SELECT DEPARTMENT_ID ,sum(NVL(salary,0)) FROM EMPLOYEES GROUP BY DEPARTMENT_ID HAVING sum(NVL(salary,0)) >50000 ;
--9. AVG Function (Advanced)
--Question:
--Write a query to find the average commission (COMMISSION_PCT) given to employees who have a non-null commission in the EMPLOYEES table.
SELECT avg(COMMISSION_PCT) FROM EMPLOYEES;
--10. COUNT Function (Advanced)
--Question:
--Write a query to count how many employees have a salary greater than 10,000.
SELECT count(*) FROM employees WHERE SALARY >10000;
--11. MAX and MIN Together
--Question:
--Write a query to find the maximum and minimum salary within each job ID using GROUP BY.
SELECT MAX(Salary), MIN(salary) FROM employees GROUP BY job_id;
--12. SUM Function (Advanced)
--Question:
--Write a query to sum the salaries for each manager (MANAGER_ID) in the EMPLOYEES table.
SELECT SUM(salary) FROM EMPLOYEES GROUP BY MANAGER_ID ;
--13. GROUP BY with Multiple Columns
--Question:
--Write a query to display department ID and job ID, and show the total salary for each group (department + job combination).
SELECT DEPARTMENT_ID , JOB_ID ,sum(salary) FROM employees GROUP BY DEPARTMENT_ID ,JOB_ID ;
--14. HAVING with COUNT
--Question:
--Write a query to display job ID and count of employees for each job, only show jobs that have more than 5 employees.
SELECT JOB_ID , count(*) FROM EMPLOYEES GROUP BY JOB_ID HAVING count(*) >5;
--15. Using Aggregate Functions Together
--Question:
--Write a query to show each department ID with:
--Total employees,
--Average salary,
--Maximum salary,
--Minimum salary,
--and group them by department ID.
SELECT DEPARTMENT_ID , count(*) , AVG(salary),MAX(SALARY ),min(SALARY )  FROM employees GROUP BY DEPARTMENT_ID;
--16. Complex HAVING
--Question:
--Write a query to find all departments where:
--The average salary is more than 8000,
--And the number of employees is less than 10.
SELECT DEPARTMENT_ID FROM employees GROUP BY DEPARTMENT_ID HAVING avg(NVL(SALARY,0)) >8000 AND count(*)<10;
--17. Nested Aggregation
--Question:
--Write a query to find the department that has the highest total salary among all departments.
--(Hint: You can use GROUP BY + ORDER BY DESC + FETCH FIRST 1 ROW ONLY.)
SELECT DEPARTMENT_ID, SUM(SALARY) FROM EMPLOYEES GROUP BY DEPARTMENT_ID ORDER BY SUM(SALARY) DESC FETCH FIRST 1 ROWS ONLY;
--18. Using Aliases with Aggregates
--Question:
--Write a query to show department ID, sum of salaries as Total_Salary, and average salary as Average_Salary, grouped by department ID.
SELECT DEPARTMENT_ID ,sum(salary) AS Total_Salary , avg(Nvl(salary,0)) AS Average_Salary FROM EMPLOYEES GROUP BY DEPARTMENT_ID;