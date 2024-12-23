--1)
SELECT 
    person.FirstName,
    person.MiddleName,
    person.LastName,
    personphone.PhoneNumber,
    phonenumbertype.Name
FROM 
    person.person
INNER JOIN 
    person.personphone
    ON person.BusinessEntityID = personphone.BusinessEntityID
INNER JOIN 
    person.businessentity
    ON person.BusinessEntityID = businessentity.BusinessEntityID
INNER JOIN 
    person.phonenumbertype
    ON personphone.PhoneNumberTypeID = phonenumbertype.PhoneNumberTypeID
ORDER BY 
    person.BusinessEntityID DESC;
--2)
select 
	product.name,
	productreview.rating,
	productreview.comments
from production.product
inner join
	production.productreview
	on product.productid = productreview.productid
order by
	productreview.rating desc
;

--3)
select 
	product.name,
	workorder.orderqty,
	workorder.scrappedqty
from production.product
right join
	production.workorder
	on product.productid = workorder.productid;
