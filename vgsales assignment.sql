SELECT *
FROM vgsales;
select count(year)
from vgsales;  -- THIS COUNTS EVERY S/N ON THE TABLE
 
 -- 1
SELECT * 
FROM vgsales WHERE Year = 1980;

-- 1 correction
 SELECT count(Year)
FROM vgsales WHERE Year = 1980;

-- 2
select *
from vgsales order by Global_Sales desc
limit 1; -- this shows the row(record) of the max global sales
select max(Global_Sales)
from vgsales; -- this only shows a single cell which is the max GLOBAL SALE

-- 3
select Name_of_games, Publisher, EU_Sales
from vgsales order by EU_Sales desc
limit 1;

-- 4
select distinct Genre -- distinct removes duplicates
from vgsales;

-- 5
SELECT avg(Global_Sales) as average
from vgsales;
-- 6 correction
select Year, avg(Global_Sales)
from vgsales
group by Year;
select Global_Sales
from vgsales;

select count(Year)
from vgsales;

-- 7
select *
from vgsales
order by NA_Sales desc
limit 1;

select max(NA_Sales) from vgsales;

-- 7
Select *
from vgsales 
where Publisher = 'Activision'; -- 

select count(Name_of_games) 
from vgsales
where Publisher = 'Activision';

-- 8
select sum(Global_Sales)
from vgsales
where Genre = 'Shooter';