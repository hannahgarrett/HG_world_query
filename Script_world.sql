use `world`;
show tables;
# Retrieve all of the information from table city
select * from City;
# Retrieve all of the information from table country
select * from Country;
# How many records city has 
select count(*) from City;
# How many rows/records in country
select count(*) from Country;
# Get set of records matching some criteria population more than 7 million
select * from City where Population>7000000;
# Get Name and head of state name where population more than 5 million and life expectancy 70
select Name, HeadofState from Country
where population>5000000 and LifeExpectancy>70;
# List Name and Population fields from country table that are Caribbean region and population more than 9 million
select Name, Population from Country
where Region="Caribbean" and population>9000000;
# Make it descending
select Name, Population from Country
where Region="Caribbean" and population>8000000
order by population desc;
#Give the name and the per capita GNP for those countries a population of at least 200 million and having GNPper capota atleast .005
select Name, GNP/Population as GNPperCapita from Country
where population>=200000000
having GNPperCapita >=.005;
# Show the name and population for France, Germany, Italy
select Name, Population from Country
where Name IN ('France','Germany','Italy');
#A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
select name, population, SurfaceArea from Country
where SurfaceArea>3000000 or population>250000000
order by population desc;
# The name of three countries which are least populated among the countries which have at least 40,0000 people
select name, population from Country
where population>=40000
order by population limit 3;
# Search for population in the last table where Name contains ‘U.S.’
select name, population from Country
where name like "%U.S.%";
# Search for records in the Country table where the head of state’s name 'bush'
select name, HeadofState, population from Country
where HeadofState like "%bush%";
# Search for records in the Country table where the head of state’s name end with 'II'
select name, HeadofState from Country
where HeadofState like "%II";
# Search for records in the Country table where the head of state’s name ends with ‘i’, 
# And the country name starts with a ‘U’. 
select name, HeadofState from Country
where HeadofState like "%i" and name like "U%";
# Select the country with the minimum population
select min(population) from Country;
# Select the city name with the maximum population
select max(population) from Country;
# Find out the language spoken for the cities started with UZ
select language, City.name  from City, CountryLanguage
where name like "UZ%";
