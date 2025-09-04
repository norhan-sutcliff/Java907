select * from employees where employee_id between 100  and  105;

select * from employees where employee_id in (151 , 152, 153, 154 , 155);

select * from employees where LOWER(first_name) like 'p%';

select * from employees where LOWER(first_name) like '%a';

select * from employees where LOWER(first_name) like '%a%';

select * from employees where LOWER(first_name) like '__e%';

select * from employees where manager_id is null;

select * from employees where manager_id is not null;

insert into employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_ID,
salary, commission_pct, department_id) 
VALUES ( 1001, 'Norhan', 'Samir', 'norhan@gmail.com', '01112223334', sysdate, 'IT_PROG', 20000, 2,100);

select * from employees where job_ID in ('AD_VP', 'IT_PROG');

select * from employees order by last_name;

select * from employees order by hire_date desc;

select * from employees order by department_id asc, salary desc;

select employee_id, first_name, LOWER(last_name) as last_name from employees;

select employee_id, UPPER(first_name) as first_name, last_name from employees;

select employee_id, INIRCAP(first_name) as first_name, INITCAP(last_name) as last_name from employees;

select * from employees where LOWER(last_name) = 'smith';