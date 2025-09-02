create table Employees (EmployeeID number, FirstName varchar(20), LastName varchar(20), Department varchar(20), Salary number);

insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)values(101,'John1','Doe1','HR',20000);
insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)values(102,'John2','Doe2','IT',50000);
insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)values(103,'John3','Doe3','CS',40000);
insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)values(104,'John4','Doe4','IT',10000);
insert into Employees(EmployeeID, FirstName, LastName, Department, Salary)values(105,'John5','Doe5','ZX',30000);

update Employees set Salary = 600000 where EmployeeID = 101;

delete from Employees where Department = '101';

select * from Employees where Department = 'IT';

select EmployeeID, FirstName ||' '|| LastName as FullName, Department,Salary from Employees;