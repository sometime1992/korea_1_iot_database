select * from user;

insert into user (name, email)
values
	('이도경', 'efg@example.com');
    
update user set name = 'lsa', email = 'w' where id = 1;

select * from user;