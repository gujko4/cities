

ALTER TABLE cities ADD cityname VARCHAR(30) NOT NULL 
ALTER TABLE cities MODIFY capital VARCHAR(30) NOT NULL
  



INSERT INTO cities (cityname, country, population, capital, mayor, is_capital)
VALUES ('Komarno', 'Slovakia', 360000, 'Bratislava', 'Bela Keszeg', 0),
       ('Bogota', 'Colombia', 8600000, 'Bogota', 'Claudia Lopez', 1),
       ('Los Angeles', 'USA', 4000000, 'Washington DC', 'Karen Bass', 0),
       ('Bydgoszcz', 'Poland', 345000, 'Warsaw', 'Rafal Bruski', 0),
       ('Kolin', 'Czech Republic', 30000, 'Prague', 'Vit Rakusan', 0),
       ('Tartu', 'Estonia', 105000, 'Tallinn', 'Urmas Klaas', 0);
       
SELECT * FROM cities WHERE population > 500000 #selecting all cities with population above 500k

SELECT * FROM cities WHERE is_capital = 1 #selecting population where the city is also the capital
SELECT * FROM cities WHERE country = 'Poland' #all polish cities
SELECT * FROM cities ORDER BY population ASC #cities by population ascending
SELECT * FROM cities ORDER BY cityname DESC #cities by population descending
SELECT population FROM cities;

SELECT COUNT(cityname) AS count_cities FROM cities;
average_persons = SELECT population FROM cities / count_cities; #average population - code that didnt work

SELECT SUM(population) / COUNT(cityname) AS average_population
FROM cities; #average population - worked



SELECT COUNT(cityname) FROM cities GROUP BY country; #cities grouped by country name

UPDATE cities SET population = 9000000 WHERE capital = 'Bogota'; #updated population of a city
SELECT * FROM cities WHERE country = 'Colombia' 

SELECT MIN(population) FROM cities AS lowest_pop
TRUNCATE lowest_pop #deleting city with lowest population - code didnt work

DELETE FROM cities WHERE population = (SELECT MIN(population) FROM cities);
SELECT * FROM cities #deleting city with lowest population - worked
