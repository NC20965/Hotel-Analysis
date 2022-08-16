#Use current schema
use portfolioproject;

#Import and merge 3  dataset
with hotels as (
select *from portfolioproject.data_2018
union
select *from portfolioproject.data_2019
union
select *from portfolioproject.data_2020)
/*Is the revenue growing by year?*/
/*select 
arrival_date_year,ï»¿hotel as hotel, round(sum((stays_in_weekend_nights + stays_in_week_nights))*adr,2) as revenue 
from hotels
group by arrival_date_year, ï»¿hotel;
*/

# Querry from meal cost
#select *from portfolioproject.meal_cost;

 #Querry from market segement
#select *from portfolioproject.market_segment;

# Join Market_segment table to Hotels table and Meal_cost
select *from hotels 
left join portfolioproject.market_segment
on hotels.market_segment = market_segment.market_segment
left join portfolioproject.meal_cost
on hotels.meal = meal_cost.meal;


