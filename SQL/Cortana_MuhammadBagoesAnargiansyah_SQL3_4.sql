--1)
SELECT productid
FROM products
WHERE productname = 'Queso Cabrales';

INSERT INTO orders (
    orderid, 
    customerid, 
    employeeid, 
    orderdate, 
    requireddate, 
    shippeddate, 
    shipvia, 
    freight, 
    shipname, 
    shipaddress, 
    shipcity, 
    shipregion, 
    shippostalcode, 
    shipcountry
) VALUES (
    11779,                 
    'ALFKI',             
    5,                      
    NOW(),                 
    NOW() + INTERVAL '5 days',  
    NULL,                 
    1,                     
    50.00,             
    'Alfreds Futterkiste', 
    'Obere Str. 57',        
    'Berlin',               
    'Berlin',               
    '12209',               
    'Germany'              
);

INSERT INTO order_details (orderid, productid, unitprice, quantity, discount)
VALUES (11779, 11, 14, 20, 0);

select * from order_details
where orderid in (11779)

--2)
UPDATE order_details
SET quantity = 40, 
    discount = 0.05
WHERE orderid = 11779         
AND productid = 11              
AND unitprice = 14; 

select * from order_details
where orderid in (11779)

--3)
DELETE FROM orders
WHERE orderid = 11078;

--4)
CREATE TABLE orders_1997 AS
SELECT *
FROM orders
WHERE FALSE;

INSERT INTO orders_1997
SELECT *
FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 1997;

select * from orders_1997

--5)
INSERT INTO orders_1997
SELECT *
FROM orders
WHERE EXTRACT(YEAR FROM orderdate) = 2016
AND EXTRACT(MONTH FROM orderdate) = 12;

select * from orders