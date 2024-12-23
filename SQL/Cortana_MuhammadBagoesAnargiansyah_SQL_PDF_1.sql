--1)
select * 
from data_src
where journal = 'Food Chemistry'
--2)
select * from food_des
where manufacname='Kellogg, Co.'
--3)
select * from data_src
where year > 2000
--4)
select * from food_des where pro_factor > 1.5 and fat_factor < 5
--5)
select * from data_src
where year = 1990 and journal = 'Cereal Foods World'
--6)
select * from nutr_def where units in ('kj', 'kcal')
--7)
select * from data_src where year = 2000 or journal = 'Food Chemistry'
--8)
select * from data_src where year between 1990 and 2000 and journal in ('J. Food Protection', 'Food Chemistry')
--9)
select * from weight where gm_wgt between 50 and 75;
--10)
select* from data_src where year in (1960, 1970, 1980, 1990, 2000)