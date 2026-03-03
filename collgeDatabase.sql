use college;

CREATE TABLE students_with_columns(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    branch VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    created_at DATE 
);

show tables;

insert into students_with_columns values 
(1, 'Harshada Chavan', 21, 'Computer Engineering', 'harshada@gmail.com', CURDATE()),
(2, 'Mohini Patil', 22, 'ENTC', 'mohini@gmail.com', CURDATE()),
(3, 'Rohit Lohar', 20, 'Computer Engineering', 'rohit@gmail.com', CURDATE()),
(4, 'Priti Sharma', 23, 'Mechanical Engineering', 'priti@gmail.com', CURDATE()),
(5, 'Gauri Badgujar', 21, 'Civil Engineering', 'gauri@gmail.com', CURDATE());

select * from students_with_columns;

update students_with_columns 
set age = 22
where id = 1;

select * from students_with_columns;

delete from students_with_columns
where id = 5;

select * from students_with_columns;