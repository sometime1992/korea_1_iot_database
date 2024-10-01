create database korea_iot;

use korea_iot;

create table user (
	id int auto_increment primary key,
    name varchar(50),
    email varchar(50)
);

insert into user (name, email)
values
	('이승아', 'abc@example.com');

insert into user (name, email)
values
	('최준혁', 'abc2@example.com'),
	('김다혜', 'abc3@example.com'),
	('최윤성', 'abc4@example.com');