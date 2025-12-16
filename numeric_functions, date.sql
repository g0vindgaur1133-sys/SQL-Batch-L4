-- numeric functions, dates
use world;
select lifeexpectancy, round(lifeexpectancy) from country;

select 83.62, round(83.687, 2);

-- 456.23
-- hundread place tenth place one place
select (456.23) , round(476, -3);

select 456.67, round(456.68,1), truncate(456.67,1), mod(43,3);

select 456.67, round(456.68,1), truncate(456.67,1), mod(43.6,3);

select pow(2,3), ceil(3.0000008), floor( 3.999999);

-- date
-- inbuilt date yh data and time print krna

select now(), curdate(), current_timestamp(), current_time();

-- add date
select now(), adddate( now() ,2), adddate(now(), interval -3 month);

select now(), subdate( now(), 2), year( now() );

select now(), extract( WEEK from now() );

select now(), date_format( now() , 'Month is %M & year is %W');

select distinct( continent) from country;

select count(continent), count( distinct( continent) ) from country; 
