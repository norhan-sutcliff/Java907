create TABLE Employee(
id NUMBER PRIMARY key,
name varchar(20),
age NUMBER);

create TABLE Phone (
id NUMBER, 
phoneNumber varchar(11),
emp_id NUMBER UNIQUE NOT NULL ,CONSTRAINT fk12 FOREIGN KEY(emp_id) REFERENCES Employee(id));
