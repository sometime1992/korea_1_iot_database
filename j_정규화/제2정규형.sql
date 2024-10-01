### 제2정규형 ###

# 2NF의 정의
# : DB 정규화의 두 번째 단계
# : 1NF(제1정규형)을 만족하면서 모든 비기본 속성이 기본키에 완전히 함수적 종속인 상태

# cf) 완전히 함수적 종속
# : 속성이 기본키 전체에 종속되어 있으며 기본키의 일부분만으로는 결정할 수 없는 경우

# cf) 부분 종속
# : 속성이 기본키의 일부에만 종속되는 경우
# EX) 기본키가 복합키인 경우 그 중 일부 키에만 종속된다면 부분 종속

-- drop table if exists departments;
-- drop table if exists employees;

-- create 부서 정보를 저장할 테이블
create table departments (
	department varchar(50) primary key,
    location varchar(50),
    supervisor_id varchar(50)
);

-- 직원 정보를 저장할 테이블4
create table employees (
	employee_id varchar(10) primary key, -- 기본 키
    department varchar(50), -- 기본 키에 완전 종속
    
    foreign key (department) references departments(department)
);

-- 부서 데이터 삽입
insert into departments
values
	('sales', 'seoul', 's1'),
    ('HR', 'busan', 's2');
    
insert into employees
values
	('e1', 'sales'),
    ('e2', 'sales'),
    ('e3', 'HR');




