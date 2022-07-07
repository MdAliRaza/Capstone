-- queries done on master table after importing csv to mysql

use olympics; -- using olympics schema

-- 1. Find the average number of medals won by each country.
select country 'Country', round(avg(total_medal),2) 'Average medals'  -- selecting country and average of total medals
from olympix  -- from olympix table
group by country; -- grouping by country 

-- 2. Display the countries and the number of gold medals they have won in decreasing order
select country 'Country', sum(gold_medal) 'Gold Medals'  -- selecting country and sum of gold medals
from olympix  -- from olympix table
group by country  -- grouping by country
order by sum(gold_medal) -- setting gold medal column 
desc; -- to display in descending order

-- 3. Display the list of people and the medals they have won in descending order, grouped by their country
select name 'Name',country 'Country', sum(total_medal) 'Total Medal' -- selecting athlete name,country and sum of total no of medals they won
from olympix    -- from olympix table
group by name,country  -- grouping by name, country, if grouping only country will show only one athlete from a country and sum will be done by country
order by 3  -- setting toal medal column
desc; -- to display in descending order

-- 4. Display the list of people with the medals they have won according to their their age
select name 'Name',age, gold_medal, silver_medal, brone_medal, total_medal -- selecting athlete name, age, type of and total medal they won
from olympix; -- from olympix table

-- I was confused in question whether to show type of medals and total medals won at what particlur age
-- or total medals won by a particular athlete with age

select name 'Name', sum(total_medal) 'Total Medal', age 'Age' -- selecting athelte name, sum of total medals they won with age
from olympix -- from olympix
group by name; -- grouping by name 

-- 5. Which country has won the most number of medals (cumulative)
select country 'Country', sum(total_medal) 'Total Medal'  -- selecting country with total medals 
from olympix -- from olympix table
group by country  -- grouping by country
order by 2 -- setting total medal column
desc; -- to display in descending order
