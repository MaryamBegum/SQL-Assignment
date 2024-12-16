#Maryam Begum SQL Tasks--

#Task 3--
SELECT  COUNT(id) AS "No of Cities"
FROM city as c
WHERE countrycode= 'USA';

#or--

SELECT Name, CountryCode, COUNT(id) AS "No of Cities"
FROM city as c
WHERE countrycode= 'USA'
GROUP BY Name, CountryCode
Order by Name;

#Task 4--
SELECT Name, Code, LifeExpectancy, Population
FROM country as c
WHERE Code= 'ARG';

#Task 5--
SELECT Name, LifeExpectancy
FROM country as c
Order by LifeExpectancy DESC
LIMIT 1;

#Task 6--
SELECT Name, CountryCode 
FROM city as c
WHERE Name LIKE 'f%'  
Order by Name
LIMIT 25;

#Task 7--
SELECT ID, Name, Population 
FROM city as c
LIMIT 10;

#Task 8--
SELECT Name, Population 
FROM city as c
WHERE Population > 2000000
Order by Name;

#Task 9--
SELECT Name
FROM city as c
WHERE Name LIKE 'be%'  
Order by Name;

#Task 10--
SELECT Name, Population 
FROM city as c
WHERE Population BETWEEN 500000 AND 1000000
Order by Name;

#Task 11--
SELECT Name, Population 
FROM city as c
Order by Population ASC
LIMIT 1;

#Task 12--
SELECT Name, Code, Language, Population
FROM country as c
INNER JOIN countrylanguage as cl 
ON c.Code = cl.CountryCode
WHERE Code= 'CHE';

# --Challenge Tasks --

#Task 13--
SELECT Name, Capital
FROM country as c
WHERE Name= 'Spain';

#Task 14--
SELECT Name, LifeExpectancy
FROM country as c
Order by LifeExpectancy DESC
LIMIT 1;

#Task 15--
SELECT ci.Name,  Continent
FROM city as ci
INNER JOIN country as co
ON ci.countrycode = co.code
WHERE Continent= 'Europe' 
Order by ci.Name ASC;

#Task 16--
SELECT Name, Population
FROM city as c
Order by Population DESC
LIMIT 1;

#Task 17--
SELECT Continent, SUM(population) AS "Total Population"
FROM country
GROUP BY continent;

#Task 18--
SELECT Continent, AVG(lifeexpectancy) AS "Average Life Expectancy"
FROM country
GROUP BY continent;

#Task 19--
SELECT co.Name, COUNT(ci.Name) AS "Number of cities"
FROM country as co
INNER JOIN city as ci 
ON co.population = ci.population
GROUP BY co.Name
ORDER BY co.Name;

#Task 20--
SELECT co.Name, SUM(ci.population) AS "Total Population"
FROM country as co
INNER JOIN city as ci 
ON co.population = ci.population
GROUP BY co.Name
ORDER BY co.Name;

#Task 21--
SELECT c.Continent, l.Language, COUNT(*) AS "Language Count"
FROM country as c
JOIN countrylanguage as l
 ON c.code = l.countrycode
GROUP BY c.continent, l.language
ORDER BY COUNT(*) DESC;

#Task 22--
SELECT c.name AS "Country Name", l.Language
FROM country AS c
JOIN countrylanguage AS l ON c.code = l.countrycode
WHERE l.language IN ('English', 'Spanish', 'French');

#Task 23--
SELECT c.Continent, SUM(c.population) AS "Total population"
FROM country AS c
GROUP BY c.continent
ORDER BY "Total population" DESC;

#Task 24--
SELECT c.Name AS Country, COUNT(cl.Language) AS "Language Count"
FROM country AS c
JOIN countrylanguage AS cl ON c.Code = cl.CountryCode
GROUP BY c.Name
HAVING COUNT(cl.Language) > 3
ORDER BY COUNT(cl.Language) DESC;

#Task 25--
SELECT c.Name AS Country, c.Population
FROM country AS c
WHERE c.Population > (SELECT AVG(Population) FROM country)
ORDER BY c.Population DESC;




