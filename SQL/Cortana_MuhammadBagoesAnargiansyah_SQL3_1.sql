--1)
select categoryid, count(*) as numberofrecords
from products
group by categoryid
order by  numberofrecords asc

--2)
select orderdate, sum(quantity)
from orders
inner join
	order_details on orders.orderid = order_details.orderid
WHERE EXTRACT(YEAR FROM orders.orderdate) = 1997
group by orderdate
;

--3)
select orders.customerid, (order_details.unitprice*order_details.quantity)
from orders
inner join
	order_details on orders.orderid = order_details.orderid
where (unitprice*quantity) > 5000
;

--4)
select orders.customerid, (order_details.unitprice*order_details.quantity)
from orders
inner join
	order_details on orders.orderid = order_details.orderid
where (unitprice*quantity) > 5000 and EXTRACT(MONTH FROM orders.orderdate) < 7
;