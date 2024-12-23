--1)
CREATE INDEX idx_customer_order ON orders (customerid, orderid);

--2)
DROP INDEX IF EXISTS idx_orders_customerid_orderid;

--3)
CREATE TABLE returns (
    id SERIAL PRIMARY KEY,
    customerid VARCHAR NOT NULL,  -- Change to match the type in customers table
    date_returned DATE NOT NULL,
    productid INT NOT NULL,
    quantity INT NOT NULL,
    orderid INT NOT NULL,
    FOREIGN KEY (customerid) REFERENCES customers(customerid),
    FOREIGN KEY (productid) REFERENCES products(productid),
    FOREIGN KEY (orderid) REFERENCES orders(orderid)
);

--4)
ALTER TABLE returns
RENAME COLUMN date_returned TO return_date;

--5)
ALTER TABLE returns
RENAME TO bad_orders;

--6)
ALTER TABLE bad_orders
ADD COLUMN reason TEXT;

--7)
ALTER TABLE bad_orders
DROP COLUMN reason;

--8)
ALTER TABLE bad_orders
ALTER COLUMN quantity TYPE INT;

--9)
DROP TABLE IF EXISTS bad_orders;

