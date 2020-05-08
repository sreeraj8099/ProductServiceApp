-- step1: create a mysqlconnection using the following info

-- Host:127.0.0.1
-- port:3306
-- Connection Method: Standard(TCP/IP)
-- Username: root
-- Password: mysql


-- step2:after opening the connection, run the following sql scripts in mysql 

-- 1. 
CREATE DATABASE `productdb`

-- 2.
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
)

-- 3.
create table product(productid integer primary key,productname varchar(30),productcatagory  varchar(10),productprice bigint);

-- 4.
DML Statements
INSERT INTO `user` (`user_id`, `user_name`, `password`, `role`) VALUES ('1', 'ram', 'password', 'ROLE_ADMIN,ROLE_USER');
INSERT INTO `user` (`user_id`, `user_name`, `password`, `role`) VALUES ('2', 'sam', '12345', 'ROLE_USER');

insert into product values(101,'whirlpool','fridge',20000);
insert into product values(102,'lgx','mobile',37000);
insert into product values(103,'philips','TV',30000);