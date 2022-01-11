select * from gdp_by_country;
select * from military_expenditure_by_country;

select count(*) from gdp_by_country;
select count(*) from military_expenditure_by_country;

#join or inner join
select * from gdp_by_country inner join military_expenditure_by_country 
on gdp_by_country.Country_Name = military_expenditure_by_country.Country_Name;

select gdp.Country_Name as gdp, me.Country_Name as me 
from gdp_by_country as gdp join military_expenditure_by_country as me 
on gdp.Income_Group = me.Income_Group;

select g.Country_Name, g.Income_Group, m.Region, m.ME_2020
from gdp_by_country g inner join military_expenditure_by_country m
on g.Country_Name = m.Country_Name;

select gdp_by_country.Country_Name, Yr_2020 from gdp_by_country inner join military_expenditure_by_country
on gdp_by_country.Region = military_expenditure_by_country.ME_2020 where Yr_2020>=2 order by Yr_2020 desc;

#left join or left outer join
select * from gdp_by_country left join military_expenditure_by_country 
on gdp_by_country.Country_Name = military_expenditure_by_country.Country_Name;

select gdp.Indicator_Name as gdp, me.Indicator_Name as me from gdp_by_country as gdp 
left join military_expenditure_by_country as me on gdp.Country_Name = me.Country_Name;

select g.Country_Name, g.Income_Group, m.Region, m.ME_2020
from gdp_by_country g left join military_expenditure_by_country m
on g.Country_Name = m.Country_Name;

select gdp_by_country.Country_Name, Yr_2020 as '2020(gdp in T)' from gdp_by_country left join military_expenditure_by_country
on gdp_by_country.Region = military_expenditure_by_country.ME_2020 where Yr_2020>=2 order by Yr_2020 desc;

#right join or right outer join
select * from military_expenditure_by_country right join gdp_by_country 
on gdp_by_country.Country_Name = military_expenditure_by_country.Country_Name;

select * from military_expenditure_by_country right outer join gdp_by_country 
on gdp_by_country.Country_Name = military_expenditure_by_country.Country_Name;

select g.Country_Name, g.Income_Group, m.Region, m.Indicator_Name, m.ME_2020 
from gdp_by_country g right join military_expenditure_by_country m
on g.Country_Name = m.Country_Name order by ME_2020 desc;

select gdp_by_country.Country_Name, Yr_2020 as '2020(gdp in T)' from gdp_by_country right join military_expenditure_by_country
on gdp_by_country.Region = military_expenditure_by_country.ME_2020 where Yr_2020>=2 order by Yr_2020 desc;

#full join or full outer join
select * from gdp_by_country full join military_expenditure_by_country 
on gdp_by_country.Country_Name = military_expenditure_by_country.Country_Name;

select gdp_by_country.Country_Name, Yr_2020 as '2020(gdp in T)' from gdp_by_country full join military_expenditure_by_country
on gdp_by_country.Region = military_expenditure_by_country.ME_2020 where Yr_2020>=2 order by Yr_2020 desc;

#natural join
select * from gdp_by_country natural join military_expenditure_by_country;
select * from gdp_by_country natural left join military_expenditure_by_country;
select * from gdp_by_country natural right join military_expenditure_by_country;

#cross join or cartesian join
select * from gdp_by_country cross join military_expenditure_by_country;

select gdp_by_country.Country_Name from gdp_by_country
cross join military_expenditure_by_country;

select gdp_by_country.Country_Name, Yr_2020 from gdp_by_country
cross join military_expenditure_by_country where Yr_2020>=1 order by Yr_2020 desc;

#self join
select gdp_by_country.Country_Name, gdp_by_country.Yr_2020 from gdp_by_country where Yr_2020>=2;

select gdp_by_country.Country_Name, gdp_by_country.Yr_2020 from gdp_by_country
where Yr_2020>=1 order by Yr_2020 desc;