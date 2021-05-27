use new_world;

select name from country
where population >8000000;

SELECT name FROM country WHERE name LIKE '%land%';

select name from city where population between 500000 and 1000000;

select name from country where continent like 'Europe';

select name
from country
order by surfaceArea DESC;

select city.name
from city inner join country 
where city.countryCode = country.code and country.name='Netherlands';


select name, population from city where city.name like 'Rotterdam';

select name, surfaceArea  
from country
order by surfaceArea DESC
limit 10;

select name, population
from city
order by population DESC
LIMIT 10;

select sum(population)
from country;


select country.name, city.countryCode, city.population from country  join city 
group by city.countryCode
having city.population>10000000;

desc countrylanguage;
use new_world;
select * from city;
select *from country;

