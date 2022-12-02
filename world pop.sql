-- This is the first query:

SELECT DISTINCT year from population_years;

--What years are covered by the dataset?
-- 2000-2010

--largest pop for Gabon in this data set
SELECT MAX(population)
FROM population_years
WHERE country='Gabon';
--Gabon's largest pop was 1.54526 million 

--What were the 10 lowest population countries in 2005?
SELECT country
FROM population_years
WHERE year = 2005
ORDER BY population ASC LIMIT 10;

--What are all the distinct countries with a population of over 100 million in the year 2010?
SELECT DISTINCT country
FROM population_years
WHERE population >100 AND year='2010'; 

--How many countries in this dataset have the word “Islands” in their name?

SELECT COUNT (DISTINCT(country)) as 'Distinct countries with the world "Islands" in their name'
FROM population_years
WHERE country LIKE "%Islands%";

--What is the difference in population between 2000 and 2010 in Indonesia?
SELECT population
FROM population_years
WHERE country = 'Indonesia' AND year='2000' 
OR country = "Indonesia" AND year='2010';

SELECT 242.96834-214.67661;