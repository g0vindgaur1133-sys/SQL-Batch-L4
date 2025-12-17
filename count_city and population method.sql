-- group by
use world;

select region, count(name), count(continent) from country group by region;

select region, avg( population) from country group by region;

-- count cities which have a population of more than 1 lakh
-- where( sabse phle execute ) => group by => count()

select district, count(name)  from city where population>100000 group by district;

select * from country;

select count(name) from country where continent='Asia' and indepyear>1950;

-- get total country which got independence after 1950 each continent
select continent, count(name) from country where indepyear>1950 group by continent;

-- having to filter data based on aggregate colum like sum, count, max
select continent, sum(population) from country group by continent
having sum(Population)>30401150;

select continent, sum(population) from country where lifeexpectancy>35.0 group by Continent;

select governmentform, count(name) from country group by governmentform having count(name) > 30;

select governmentform, count(name) from country where capital> 30 group by GovernmentForm having sum(population)>30000;

select governmentform, count(name), sum(population) from country
where capital>30
group by GovernmentForm
	having sum(Population)>30000;
    
select continent,region, count(name) from country group by continent,region;



