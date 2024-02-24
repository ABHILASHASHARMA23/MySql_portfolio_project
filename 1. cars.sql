create schema cars;
use cars;

-- READ DATA
select * 
from car_dekho;

-- Total cars: To get a count of total records
select count(*)
from car_dekho;

-- The manager asked the employee how many cars will be available in 2023?
select count(*) from car_dekho where year = 2023;

-- The manager asked the employee Hoe many cars is available in 2020, 2021, 2022?
-- using group by
select count(*)
from car_dekho
where year in (2020, 2021, 2023) 
group by year;

-- Client asked me to print the total of all cars by year
select year, count(*) 
from car_dekho 
group by year;

-- client asked to car dealer agent hoe many diesel cars will there be in 2020?
select Count(*)
from car_dekho
where year = 2020
and fuel = "Diesel";

-- The manager told the employee to give a print all the fuel cars(petrol) come by all year?
select year, count(*)
from car_dekho
where fuel = "petrol"
group by year;

-- Manager said there were than 100 cars in a given year, which year had more than 100 cars?
select year, count(*)
from car_dekho
group by year
having count(*)>100;

select year, count(*)
from car_dekho
group by year
having count(*)<50;

-- Manager said to the employee all cars count details between 2015 and 2023 complete list?
select count(*)
from car_dekho
where year between 2015 and 2023;

-- Manager said to the employee all cars details between 2015 to 2023 complete list?
select *
from car_dekho
where year between 2015 and 2023;
