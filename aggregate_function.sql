-- functions ( date, string, number)
-- aggregate functions ( to perform the calculation on set of rows) (multi line functions)
 

-- count
use world;

select * from country;
select count(indepyear) from country;

select count(*), count(indepyear) from country;

select distinct continent, region from country;

select distinct continent, region from country;

select count( population ), sum(population), avg(population) from country;

select count( distinct governmentform) from country;

select count(governmentform) , count( distinct governmentform), sum(governmentform)
from country where continent='Asia';

select count(name), sum(population),
count( distinct indepyear ) from country where continent ='Africa';

select count(name), avg(surfacearea), sum(population) from country
where indepyear > 1947 and indepyear < 1998;

select count(*), count(distinct continent), avg(population),
sum(capital) from country where name like'A%' or Name like 'D%' ;

select count(name) from country where continent='Europe';

select continent, count(*) from country group by continent;

select indepyear, count(*) from country group by indepyear;

select * from city;

select continent, count( name), sum(population), avg(population),
max(population), min(population), max(indepyear), min(indepyear)
from country group by continent;

select countrycode, count(*) , count( district) , count( distinct district),
sum(population) from city group by countrycode;

