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

describe city;
-- where clause we will filter the data
select * from city where district='Zuid-Holland';

select * from city where countrycode='ARG'; -- filter city for ARG country code

-- 6 more than 6 lakh
select * from city where population>600000;

-- <> != ( not equals to )
select * from city where countrycode <> 'ARG'; -- filter city for ARG country code

-- in operator
select * from country where continent='North America';

select * from country where continent='Europe';


-- getting countries in below continents
select * from country where continent in ('North America','Europe','Asia');

-- indepyear
select name, continent from country where indepyear in(1901, 1960);

-- range of values
select name, continent, indepyear from country where indepyear between 1901 and 1960;
-- not operator use to block the range of specific value
select name, continent, indepyear from country where indepyear not between 1901 and 1960;
-- between range of values
-- in -> specific value me search krna

-- ques
select name, continent, population, gnp from country where population not between 5000 and 200000;

select name, region from country where region not in ('Middle East');

select * from country where lifeexpectancy in (38.3, 66.4);

select name, population, population*0.1 + population as population from country;

-- like operator
-- like => pattern ko seaarch krna
select name, continent from country where continent='Asia';

-- to meet with pattern
-- special character is called wildcard character
-- % [we are finding zero or more character]
-- Asian Asia%
select name, continent from country where name like '%ad%';

-- _ ( underscore) => 1 character

select name, continent from country where name like 'Ir__'











