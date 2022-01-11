show databases;
use practice;

#create table 
create table gdp_by_country(
Country_Name varchar(300),
Country_Code varchar(50),
Region varchar(300),
Income_Group varchar(300),
Indicator_Name varchar(500),
Yr_2011 int,
Yr_2012 int,
Yr_2013 int,
Yr_2014 int,
Yr_2015 int,
Yr_2016 int,
Yr_2017 int,
Yr_2018 int,
Yr_2019 int,
Yr_2020 int);

#select
select * from gdp_by_country;
select Country_name, Income_Group from gdp_by_country;

#where
select Country_name, income_group, Yr_2020 from gdp_by_country where Yr_2020>=2;
select country_name, region, income_group, Yr_2020 from gdp_by_country where Yr_2019>=2 and Yr_2019<=25;
select country_name, region, income_group, Yr_2020 from gdp_by_country where Yr_2020 between 1 and 2;
select country_name, region, income_group, Yr_2020 from gdp_by_country where Yr_2020>=2;
select country_name, region, income_group, Yr_2020 from gdp_by_country where Yr_2020=2 or Yr_2020=3;

#order by/sorting
select * from gdp_by_country order by Country_Name;
select country_name, income_group, Yr_2020 from gdp_by_country order by Yr_2020;
select country_name, income_group, Yr_2020 as '2020(GDP in T)' from gdp_by_country order by Yr_2020;
select country_name, income_group, Yr_2020 as '2020(GDP in T)' from gdp_by_country order by Yr_2020;
select country_name, Yr_2020 from gdp_by_country where Yr_2020>=2 order by 2;
select country_name, Yr_2020 from gdp_by_country where Yr_2020>=2;
select country_name, income_group from gdp_by_country order by Yr_2020 desc;
select country_name, income_group from gdp_by_country order by Yr_2020;
select country_name, income_group from gdp_by_country where Region='South Asia' order by Country_Name limit 5 offset 3;
select country_name, region as continent, income_group, Yr_2020 from gdp_by_country where Yr_2020>=2 order by Yr_2020 desc;
select Country_Name, Income_Group, Yr_2020 from gdp_by_country where Country_Name like '%island%' order by Yr_2020 desc;
select Country_Name, Yr_2020 from gdp_by_country where Region in ('South Asia', 'Europe & Central Asia') order by Yr_2020 desc;
select Country_Name, Yr_2020 from gdp_by_country where Country_Name like '_n%' order by Yr_2020 desc;
select Country_Name, Yr_2020 from gdp_by_country order by Yr_2020 desc, Region, Income_Group;
select Country_Name, Yr_2020, Region, Income_Group from gdp_by_country order by Yr_2020 asc;

#group by & having
select Country_Name, count(Country_Name) from gdp_by_country group by Country_Name;
select Income_Group, count(Income_Group) from gdp_by_country group by Income_Group;
select Income_Group, count(Income_Group) as count from gdp_by_country group by Income_Group;
select Income_Group, count(Income_Group) as count from gdp_by_country group by Income_Group having count(Income_Group)>60;
select * from gdp_by_country;

#removing duplicate
select income_group from gdp_by_country;
select distinct income_group from gdp_by_country;
select distinct region, income_group from gdp_by_country;

#Count
select count(*) from gdp_by_country;
select count(*) from gdp_by_country where Yr_2020>2;
select count(*) from gdp_by_country where Yr_2020>=2;
select count(*) from gdp_by_country where Yr_2020>=2 and Income_Group='Lower middle income';
select count(income_group) from gdp_by_country;
select count(Yr_2020) from gdp_by_country;

#insert
insert into gdp_by_country (country_name, country_code, region, income_group, Yr_2020)
values ('test', 'test1', 'test2', 'test3', '3');
select * from gdp_by_country;

#update
update gdp_by_country set country_code='abcdefg', region='asia', income_group='lower income' where country_name='test';
select * from gdp_by_country;
update gdp_by_country set Yr_2020='1' where country_name='test';
select * from gdp_by_country;

#delete
delete from gdp_by_country where Country_Name='test';
select * from gdp_by_country;

#alter
alter table gdp_by_country add Yr_2021 text default null;
select * from gdp_by_country;

#conditional expression
select case when Yr_2020 then 'true' else 'false' end as boolYr_2020,
case when region then 'true' else 'false' end as boolregion
from gdp_by_country;
select case Country_Name when 1 then 'true' else 'false' end as boolCountry_Name,
case income_group when 1 then 'true' else 'false' end as boolincome_group
from gdp_by_country;

#Strings
select country_name, length(country_name) as len from gdp_by_country order by len desc, Country_Name;
select Indicator_Name,
substr(indicator_name, 1,3) as gdp,
substr(indicator_name, 5,18) as currency
from gdp_by_country order by Indicator_Name;
select upper(Country_Name) from gdp_by_country order by Yr_2020 desc;
select lower(country_name) from gdp_by_country order by Yr_2020 asc;

#Numbers
select round(2.5555);
select round(2.5555, 3);
select round(2.5555, 0);

select date('now');
select datetime('now');