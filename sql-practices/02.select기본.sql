select * 
  from departments;

-- alias
select first_name as '이름', last_name as '성', hire_date as '입사일'
  from employees; 
 
-- 함수 
select concat(first_name, ' ', last_name) as '이름',
       length(first_name),
       gender as '성 별', 
       hire_date as '입사일'
  from employees; 

-- distinct
select distinct title from titles;

-- order by
  select concat(first_name, ' ', last_name) as '이름',
         length(first_name),
         gender as '성 별', 
         hire_date as '입사일'
    from employees
order by hire_date desc;

-- Like 검색
select * from employees where first_name like 'p%';
select * from employees where first_name like 'p___';

-- 1. salaries 테이블에서 2001년 월급을 가장 높은순으로 사번, 월급순으로 출력
  select emp_no, salary 
    from salaries 
   where from_date like '2001-%'
order by salary desc; 

-- 2. salaries 테이블에서 2001년 월급을 가장 높은순으로 사번, 월급순으로 출력
  select emp_no, salary 
    from salaries 
   where from_date > '2000-12-31'
	 and from_date < '2002-01-01'
order by salary desc; 

-- 3. employees 테이블에서 1991년 이전에 입사한 직원의 이름, 성별, 입사일을 출력
  select first_name, gender, hire_date  
    from employees 
   where hire_date < '1991-01-01'
order by hire_date desc;   

-- date_format
-- 4. employees 테이블에서 1989년 이전에 입사한 여직원의 이름, 입사일을 출력
  select first_name,
         gender,
         date_format(hire_date, '%Y년 %m월 %d일 %h:%i:%s') as hire_date 
    from employees 
   where hire_date < '1989-01-01'
     and gender = 'F'
order by hire_date desc;   


  
 