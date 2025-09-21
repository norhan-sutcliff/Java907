CREATE TABLE Player(
id NUMBER unique NOT null,
name varchar(30) UNIQUE,
age NUMBER);
----------------------------------------------------
create TABLE Manger(
id NUMBER NOT null,
name varchar(30),
salary NUMBER,
CONSTRAINT comp_unique UNIQUE (id,name))
-------------------------------------------------
-- drop table manger
create TABLE Manger(
id NUMBER PRIMARY KEY,
name varchar(30),
age NUMBER)

------------------------------------------------