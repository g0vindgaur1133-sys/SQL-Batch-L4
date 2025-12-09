select database();

-- change to world database
use world;

-- tables
show tables;

-- to see the structure of table
describe city;

-- to print data of table
select * from city;

-- to access column
select name, population from city;

-- colum can be print in any order
select population, name, district from city;

select name, population, population+10 from city;


-- query can  be written in multiple line
-- not case sensitive
select name, population, countrycode,
	population from city;
    
SELECT name, population
FROM city;

-- alias ( nickname)
select *, population+12+12-4-5-12-4 as 'newpopulation' from country;

-- what is database
-- what is filesysten and how it is differenet from dbms
-- type of DBMS and the name for each of one
-- DBMS vs RDBMS
-- where cluase