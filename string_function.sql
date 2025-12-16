-- select => data retrive/access
-- query => multiple line and case sensitive
-- where ( filter) and or between in like
-- between , in, like (%, _)

-- functions
/*
set of statement
functions

code reusuable

scaler function -> row by row ( result for each row)
multi line functions -> multiple line pr apply and give 1 output

scaler can apply : date, int, float, string

*/

-- string functions
-- case conversion
use world;
select name, continent, upper(name) from country;

select name, continent, concat(continent, '-', code,'-','regex') from country;

-- concat with a seperater
select name, continent, concat_ws('-',continent, code, 'regex') from country;

-- substr. ( substring ) => character extract based on the position
select name, substr(name,1), substr(name,-5,3) from country;

select name, continent  from country
where name like 'Alg%';

select name, continent, substr(name,1,3) from country
where substr(name,1,3)='Alg';

-- instr => search position of character
select name, instr(name, 'e') from country;

-- length ( byte use hua)

-- to get total charactor
select char_length ('+yash');

select name, char_length(name) from country;

-- trim ( extra white space yh fir character ko remove krna)
-- ltrim , rtrim

select char_length('     yash.     ');

select trim('    yashggggggg');

select trim( both 'g' from '     yaggshgggggg');

select name, trim( both 'A' from name) from country;

-- lpad and rpad -- to create data of fixed characters
select name, population, lpad(population, 9, '0') from country; 







