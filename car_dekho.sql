
use cars;
select * from car_dekho;
-- Total cars: To get a count total records--
select count(*) from car_dekho;

-- how many cars available in 2023--
select count(*) from car_dekho where year = 2023;

-- car is available in 20,21,22,22--
select count(*) from car_dekho where year = 2020; #74

-- so one by one gone tough so we use "Group By" method--
select count(*) from car_dekho where year in(2020,2021,2022)group by year;

-- print total of all cars by year--
select year, count(*) from car_dekho group by year;

-- clint asked to car dealer agent how many diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20

-- clint asked to car dealer agent how many petrols cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "petrol"; #51

--  Manager told employee to give a print all the fuel cars (petrol,diesel, and cng) come by all year. --
select year, count(*) from car_dekho where fuel = "petrol" group by year; 
select year, count(*) from car_dekho where fuel = "diesel" group by year; 
select year, count(*) from car_dekho where fuel = "cng" group by year; 
-- merge in 1 line--
SELECT year, fuel, count(*) FROM car_dekho WHERE fuel IN ("petrol", "diesel", "cng") GROUP BY year, fuel;

-- manager said there were more then 100 cars in a given year, which year had more then 100 cars?

SELECT year, COUNT(*) as car_count FROM car_dekho GROUP BY year HAVING car_count > 100;
SELECT year, COUNT(*) as car_count FROM car_dekho GROUP BY year HAVING car_count < 50;

-- manager said to the employee all cars count details between 2015 to 2023; we need a complete list --
SELECT year, COUNT(*) AS car_count FROM car_dekho WHERE year BETWEEN 2015 AND 2023 GROUP BY year;
SELECT year, COUNT(*) AS car_count FROM car_dekho WHERE year BETWEEN 2015 AND 2023 GROUP BY year WITH ROLLUP; #4124

-- manager said to employee all cars details between 2015 to 2023 we need complete list --
SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

-- END--





