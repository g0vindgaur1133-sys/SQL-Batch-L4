use world;

-- 2 table => data extract( j0in )
select * from city;
-- id, population
-- id can by primary key

describe city; 
select count(id), count( distinct id), count(population),
count( distinct population) from city;
-- city => id(pk) , countrycode
-- country => code => pk , code
select * from country;
select * from city;

-- find out the city and their respective country name
select ct.name, ct.countrycode, cnty.code from city as ct
join country as cnty
where ct.countrycode=cnty.code;

select cnty.code, cnty.name from country as cnty;

-- you need to find the city name and population of city along with the goverment from in the city with the population from highest to the lowest
select ct.name, ct.population, cnty.governmentform from city as ct
join country as cnty
where ct.countrycode=cnty.code order by ct.population desc;

select* from countrylanguage;
-- you need to get the country name the population and all the language spoken for each country
select cnty.name,cnty.population 
from country as cnty
join countrylanguage as cl where cnty.code= cl.countrycode;

select cl.countrycode, cl.language from countrylanguage as cl;

use sakila;
select * from actor;
select * from film_actor;

-- get the actor id and the first name along with its film id
select actor_id, a.firstname, a.flim_id 



