select * from gdp_by_country;

select g.Country_Name as country, count(m.me_2020) as me_2020
from military_expenditure_by_country as m join gdp_by_country as g on g.Region = m.Income_Group
group by g.Region order by ME_2020 desc;

select Region, count(*) from gdp_by_country group by Region;
select Region, count(*) from gdp_by_country group by Region order by count(*) desc;
select Region, count(*) from gdp_by_country group by Region order by count(*) desc, Region;

select a.Region as gdp, count(t.Country_Name) as me
from military_expenditure_by_country as t join gdp_by_country as a
on a.Income_Group = t.Country_Code
group by a.Income_Group order by Country_Name;

#aggrigate function
select count(*) from gdp_by_country;
select count(country_name) from gdp_by_country;
select count(country_name) from military_expenditure_by_country;
select avg(Yr_2020) from gdp_by_country;
select Region, avg(Yr_2020) from gdp_by_country group by Region;
select Region, min(Yr_2020), max(Yr_2020) from gdp_by_country group by Region;
select Region, sum(Yr_2020) from gdp_by_country group by Region;

select count(Region) from gdp_by_country;
select count(distinct Region) from gdp_by_country;
select Region from gdp_by_country order by Region;
select distinct Region from gdp_by_country order by Region;
