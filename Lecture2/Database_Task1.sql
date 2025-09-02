create table Doctor (id NUMBER NOT NULL, name Varchar(30), salary number, address VARCHAR(50));

INSERT into Doctor (id, name, salary, address) VALUES (1, 'Ahmed', 50000, 'Cairo');
INSERT into Doctor (id, name, salary, address) VALUES (2, 'Mohamed', 70000, 'Dubai');
INSERT into Doctor (id, name, salary, address) VALUES (3, 'Marwa', 35000, 'Rio');
INSERT into Doctor (id, name, salary, address) VALUES (4, 'Nour', 88000, 'Aswan');
INSERT into Doctor (id, name, salary, address) VALUES (5, 'Sharbil', 3000, 'Beirut');
INSERT into Doctor (id, name, salary, address) VALUES (6, 'Aya', 27000, 'Alexandria');
INSERT into Doctor (id, name, salary, address) VALUES (7, 'Mona', 33000, 'Giza');
INSERT into Doctor (id, name, salary, address) VALUES (8, 'Anwaar', 1000, 'Minya');
INSERT into Doctor (id, name, salary, address) VALUES (9, 'Omar', 2000, 'London');
INSERT into Doctor (id, name, salary, address) VALUES (10, 'Shaimaa', 46000, 'Mansoura');

update Doctor set salary = 20000 where id = 3;

DELETE from Doctor where id =9;

select name || salary from Doctor;

select id,name,salary,(salary*2), address from Doctor;

Select * from Doctor where salary in (1000,2000,3000);

Rename Doctor to PRD_DOCTOR
