create TABLE Language(
id NUMBER PRIMARY key,
name varchar(30));

create TABLE Teacher ( 
id NUMBER PRIMARY key,
name varchar(30), 
salary NUMBER,
lang_id NUMBER unique,CONSTRAINT fk11 FOREIGN KEY(lang_id) REFERENCES Language(id));
