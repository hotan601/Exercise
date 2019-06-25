create database SV character set utf8 collate utf8_general_ci;
drop database SV;
create table students(
	id int primary key auto_increment,
    firstName varchar(255) not null,
    lastName varchar(255),
    gender varchar(255) not null  check(gender = 'female' or gender = 'male'),
    age int default 18,
    telephone varchar(10)  check (telephone REGEXP '[0-9]{10}'),
    scores int  check ( scores >= 0 && scores <= 100)
);
select *from students;
drop table students;

insert into students(firstName,lastName,gender,telephone,scores) values('Nguyen Van', 'A', 'male', '0766656739', 79);
insert into students(firstName,lastName,gender,telephone,scores) values('Ho Thi', 'B', 'female', '0562656569', 86);
insert into students(firstName,lastName,gender,telephone,scores) values('Le Thi', 'C', 'female', '0766656788', 79);
insert into students(firstName,lastName,gender,telephone,scores) values('Nguyen Van', 'D', 'male', '0766656852', 55);
insert into students(firstName,lastName,gender,telephone,scores) values('Tran Van', 'E', 'male', '0766656639', 66);
insert into students(firstName,lastName,gender,telephone,scores) values('Nguyen Thi', 'A', 'female', '0766656415', 96);
insert into students(firstName,lastName,gender,telephone,scores) values('Phan Van', 'H', 'male', '0766656889', 76);
insert into students(firstName,lastName,gender,telephone,scores) values('Tran Thi', 'F', 'female', '0766656669', 80);
insert into students(firstName,lastName,gender,telephone,scores) values('Pham Thi', 'K', 'female', '0766656445', 45);
insert into students(firstName,lastName,gender,telephone,scores) values('Tran Van', 'A', 'male', '0766656336', 69);
insert into students(firstName,lastName,gender,telephone,scores) values('Le Thi', 'L', 'female', '0766656775', 55);
insert into students(firstName,lastName,gender,telephone,scores) values('Nguyen Van', 'M', 'male', '0766656885', 28);
insert into students(firstName,lastName,gender,telephone,scores) values('Ngo Thi', 'U', 'female', '0766656557', 63);
insert into students(firstName,lastName,gender,telephone,scores) values('Tran Thi', 'O', 'female', '0766656995', 25);
insert into students(firstName,lastName,gender,telephone,scores) values('Tran Van', 'X', 'male', '0766656739', 89);
insert into students(firstName,lastName,gender,telephone,scores) values('Pham Thi', 'T', 'female', '0766656885', 40);
insert into students(firstName,lastName,gender,telephone,scores) values('Ho Van', 'Y', 'male', '0766656733', 82);
insert into students(firstName,lastName,gender,telephone,scores) values('Dinh Thi', 'W', 'female', '0766656788', 84);
insert into students(firstName,lastName,gender,telephone,scores) values('Nguyen Van', 'Q', 'male', '0766656223', 30);
insert into students(firstName,lastName,gender,telephone,scores) values('Le Van', 'R', 'male', '0766656789', 86);
insert into students(firstName,lastName,gender,telephone,scores) values('Pham Thi', 'F', 'female', '0766656785', 89);
insert into students(firstName,lastName,gender,telephone,scores) values('Truong Thi', 'Z', 'female', '0766656456', 85);
select * from students;

select count(id) from students;
select count(gender) from students where gender = 'male';
select *from students where gender = 'female';
select *from students where telephone = '';
select *from students where age > 18;
select *from students where scores > 80;
select *from students where scores < 45;
select *from students where lastName = 'A' or firstName = 'A';
