CREATE table Doctor(  
id NUMBER PRIMARY key, 
name varchar(30),
salary NUMBER );

create TABLE Patient(
id NUMBER PRIMARY key, 
name varchar(30),
age number);

create TABLE classes (
doc_id NUMBER,pat_id NUMBER, CONSTRAINT fk1 FOREIGN KEY (doc_id) REFERENCES Doctor(id),
CONSTRAINT fk2 FOREIGN KEY (pat_id) REFERENCES Patient(id), CONSTRAINT comp_uni UNIQUE (doc_id,pat_id));