--1)
select  customers.contactname, orders.orderdate from customers
inner join
	orders on customers.customerid = orders.customerid
where extract(year from orders.orderdate) not in (1997) 
and extract(month from orders.orderdate) not in (4);

--2)
select  customers.contactname, suppliers.companyname from customers
inner join
	suppliers on customers.companyname = suppliers.companyname;

--3)
SELECT DISTINCT customers.customerid, customers.companyname
FROM customers
INNER JOIN orders ON customers.customerid = orders.customerid
INNER JOIN order_details ON orders.orderid = order_details.orderid
GROUP BY customers.customerid, customers.companyname
HAVING SUM(order_details.unitprice * order_details.quantity) > (
    SELECT AVG(order_details.unitprice * order_details.quantity)
    FROM orders
    INNER JOIN order_details ON orders.orderid = order_details.orderid
);

--4)
select suppliers.companyname, customers.contactname, customers.city
from customers
inner join
	suppliers on customers.city = suppliers.city;
