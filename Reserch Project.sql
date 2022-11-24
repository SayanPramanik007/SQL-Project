create database Research_Project_2;
use Research_Project_2;
Alter Table Video_Games_Sales
ADD NewYear YEAR;

Alter Table Video_Games_Sales
drop column NewYear;

ALTER TABLE Video_Games_Sales
MODIFY Year Year;

UPDATE Video_Games_Sales
SET year = "0001"
WHERE year = "N/A";

/*1. What kind of game was mostly created*/
select Genre, count(Global_Sales)
From Video_Games_Sales
Group by Genre
order by count(Genre) desc;

/*2. IN Which Platform Pepole prefer to play games*/
Select Platform, count(Platform)
From Video_Games_Sales
Group by Platform
order by count(Platform) desc;

/*3. what kind of game was sold in which year*/
Select year , Genre, max(Global_Sales)
From video_games_sales
group by year
order by Global_Sales desc;

/*4. Which game has the highest selling order*/
Select Name, Global_Sales
From Video_Games_Sales
Order by Global_Sales Desc
Limit 1;

/*5.What type of games is most sold in North America Based in year*/
Select Year, NA_Sales
From Video_Games_Sales
Group by Year
Order by NA_Sales Desc;

/*6. What type of games is most sold in European Union Based in year*/
Select Year, EU_Sales
From Video_Games_Sales
Group by Year
Order by EU_Sales Desc;

/*7. What type of games is most sold in Japan Based in year*/
Select Year, JP_Sales
From Video_Games_Sales
Group by Year
Order by JP_Sales Desc;

/*8. What type of games is most sold in Other Country Based in year*/
Select Year, Other_Sales
From Video_Games_Sales
Group by Year
Order by Other_Sales Desc;