--1)
select distinct country, count(country) from customers
group by country
union
select distinct country, count(country) from suppliers
group by country
order by country asc
;

--2)
SELECT DISTINCT country
FROM customers
UNION
SELECT DISTINCT country
FROM suppliers;

--3)
select suppliers.companyname, customers.contactname, customers.country 
from customers
inner join
	suppliers on customers.country = suppliers.country;

--4)
select city
from suppliers
except select city from customers

--5)
SELECT city, COUNT(*)
FROM customers
WHERE city NOT IN (SELECT city FROM suppliers)
GROUP BY city;