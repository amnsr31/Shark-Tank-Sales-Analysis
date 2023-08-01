
use sharktank;
select * from shark_tank;

-- TOTAL EPISODES --
select max(Episode) from shark_tank;
select 	count(distinct Episode) from shark_tank;
select count(distinct brand) from shark_tank;

-- TOTAL MALE --
select sum(Male) from shark_tank;

-- TOTAL FEMALE --
select sum(female) from shark_tank;

-- GENDER RATIO --
select sum(female)/sum(male) from shark_tank;

-- TOTAL INVESTED AMOUNT --
SELECT SUM(`Amount Invested lakhs`) FROM shark_tank;

-- AVERAGE EQUITY TAKEN --
SELECT AVG(`Equity Taken %`) AS avg_equity_taken
FROM shark_tank
WHERE `Equity Taken %` > 0;

-- HIGHEST DEAL TAKEN --
select max(`Amount Invested Lakhs`) from shark_tank;

-- HIGHEST EQUITY TAKEN --
select max(`Equity Taken %`) from shark_tank;

-- AMOUNT INVESTED PER DEAL --
select avg(a.`Amount Invested Lakhs`) amount_invested_per_deal from
(select * from shark_tank where deal!='No Deal') a;

-- AVG AGE GROUP OF CONTESTANTS --
select `Avg age`,count(`Avg age`) cnt from Shark_tank group by `Avg age` order by cnt desc;

-- LOCATION  GROUP OF CONTESTANTS --
select location,count(location) cnt from shark_tank group by location order by cnt desc;

-- SECTOR GROUP OF CONTESTANTS --
select sector,count(sector) cnt from shark_tank group by sector order by cnt desc;

-- PARTNERS DEALS --
select partners,count(partners) cnt from shark_tank  where partners!='-' group by partners order by cnt desc;










