show databases;
-- last session constraint ( foreign key )
-- data type in sql
-- numeric => int, float, decimal
-- tinyint, medium, big int, small int, int
-- 1 byte, small=> 2 byte, medium => 3. int => 4 byte, long 8 byte
-- 1 byte => 8 bit ( 2**8) => 256

use regex;
create table test10( id tinyint);
insert into test10 values(1), (-128), (127);
insert into test10 values(128); -- error 

create table test11( id tinyint unsigned);
insert into test10 values(129), (255);
select * from test11;

create table test12( price float );
insert into test12 values(9182.125),(10.120381232);
select * from test12;

create table test13( price float, price2 double );
insert into test13 values(9182.125, 9182.125),(10.120381232, 10.120381232);
select * from test13;

create table test14( price2 double(5,2) );

insert into test14 values(98.1);
insert into test14 values(98.15);
insert into test14 values(4.11567);
insert into test14 values(4.11567);
insert into test14 values(195.11567);
insert into test14 values(1955.12312); -- error

select * from test14;

-- varchar and char
-- varchar is datatype => string / character values
-- char => character but of fix length of character

create table test156( name char(10));
insert into test156 values('abc'),('defghi');
insert into test156 values('aqwerfdsazx'); -- error
select * from test156;

insert into test156 values('ээээээ');
insert into test156 values('ээээээээээээ');
select * from test156;







