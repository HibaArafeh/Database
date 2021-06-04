use new_world;


set @countryname='Austria';

SELECT city.Name, country.name FROM city join country on country.Code = city.CountryCode AND country.Capital = city.ID 
where country.name=@countryname;


set @region= 'caribbean';
					
select countrylanguage.language, country.name from countrylanguage join country on countrylanguage.countrycode = country.code 
where country.region=@region;


set @language= 'english';

select count(city.name) from city join countrylanguage on city.countrycode= countrylanguage.countrycode 
where language=@language;


select country.continent, count(distinct(countrylanguage.language))as languages_number 
from country join countrylanguage on country.code = countrylanguage.countrycode 
group by country.continent;


set @spokenlanguage= 'Arabic';
set @countryregion= 'middle east';
set@ofiicialLanguage='T';

SELECT country.name, countrylanguage.language 
FROM country  join countrylanguage  on country.code = countrylanguage.countrycode
 WHERE  countrylanguage.isofficial = @ofiicialLanguage and country.region =@countryregion  and  countrylanguage.language = @spokenlanguage;