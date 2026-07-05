create database sales ; 
  use sales ;
   select * from `blinkit grocery data`;
   
   alter table `blinkit grocery data` 
   rename to blinkit ;
   
    select * from `blinkit`;
    
    describe `blinkit` ;
    
  update `blinkit`
set `ï»¿Item Fat Content`=  
case 
when `ï»¿Item Fat Content` in ( 'lf','low fat' ) then 'low fat' 
when `ï»¿Item Fat Content` = 'reg' then 'regular' 
else `ï»¿Item Fat Content` 
end ;

set sql_safe_updates = 0;

select * from blinkit ;
select min(`total sales` ) from `blinkit` ;

select rating from `blinkit`;

select count(`small size`) from blinkit ;

select distinct `Item Type` from `blinkit`;

select cast(sum(`total sales`)  / 1000000 as DECIMAL (10,2))
 as `totlal sales millions`
 from `blinkit`
 where 'Outlet Establishment Year' = 2022;
 

 describe blinkit ; 

SELECT CAST(AVG(`Total Sales`) / 100000 AS DECIMAL(10,2)) 
AS `Total Sales Millions`
FROM `blinkit`
 where 'Outlet Establishment Year' = 2022;

select cast(avg(`total sales`) as decimal (10,0)) as avg_sales  from `blinkit`;

select sum(`item type`) from `blinkit`;

select count(*) as `no of item` from blinkit
 where `Outlet Establishment Year` = 2010;
 select * from blinkit ;
select distinct `Outlet Establishment Year` from blinkit ;

select cast(avg(`total sales`) as decimal (10,0))from blinkit ;

select cast(avg(rating)as decimal (10,1)) as `avg rating`from blinkit;

select count(*) as `no of items` from blinkit ;

select sum(`total sales`) from blinkit 
where 'Outlet Establishment Year'= 2022;   

 select * from blinkit ;
 
select `ï»¿Item Fat Content`,
cast(sum(`total sales`)/ 1000
 as decimal (10,1)) as`total sales thousand`,
cast(avg(rating)as decimal (10,1)) as `avg rating`,
count(*) as`no of items`,
 cast(avg(`total sales`) as decimal (10,0)) as`avg sales`
 from blinkit 
group by `ï»¿Item Fat Content` 
order by `total sales thousand` desc;

select `item type`,
	cast(sum(`total sales`)as decimal (10,1)) as `total sales`,
    cast(avg(rating) as decimal (10,1)) as`avg rating`,
    cast(avg(`total sales`) as decimal (10,0)) as`avg total sales`,
    count(*) as `no of items`
    from blinkit 
    group by `item type`
    order by `total sales` desc
    limit 3;
    
    select`Outlet Location Type`,`ï»¿Item Fat Content`,
cast(sum(`total sales`)/ 1000
 as decimal (10,1)) as`total sales thousand`,
cast(avg(rating)as decimal (10,1)) as `avg rating`,
count(*) as`no of items`,
 cast(avg(`total sales`) as decimal (10,0)) as`avg sales`
 from blinkit 
group by `outlet location type`, `ï»¿Item Fat Content`
order by `total sales thousand` desc;


     select`Outlet Location Type`,`ï»¿Item Fat Content`,
cast(sum(`total sales`)/ 1000
 as decimal (10,1)) as`total sales thousand`
 from blinkit 
group by `outlet location type`, `ï»¿Item Fat Content`
order by `total sales thousand` desc;

select * from blinkit ;
select`outlet establishment year`,
cast(sum(`total sales`)
 as decimal (10,2)) as`total sales`
from blinkit 
group by `Outlet Establishment Year`
order by`Outlet Establishment Year` desc;


 select 
`outlet size`, 
cast(sum(`total sales`) as decimal (10,2)) as `total sales`, 
cast((sum(`total sales`) * 100.0 / sum(sum(`total sales`)) over ()) as decimal 
(10,2)) as `sales percentage` from blinkit 
group by`outlet size`
order by `total sales` desc ;

select `outlet location type`,
cast(sum(`total sales`)/ 1000
 as decimal (10,1)) as`total sales`,
cast(avg(rating)as decimal (10,1)) as `avg rating`,
cast((sum(`total sales`) * 100.0 / sum(sum(`total sales`)) over ()) as decimal 
(10,2)) as `sales percentage`,
count(*) as`no of items`,
 cast(avg(`total sales`) as decimal (10,0)) as`avg sales`
 from blinkit 
group by `outlet location type` 
order by `total sales`desc;


select `outlet type`,
cast(sum(`total sales`)/ 1000
 as decimal (10,1)) as`total sales`,
cast(avg(rating)as decimal (10,1)) as `avg rating`,

count(*) as`no of items`,
 cast(avg(`total sales`) as decimal (10,0)) as`avg sales`
 from blinkit 
group by `outlet type` 
order by `total sales`desc;


