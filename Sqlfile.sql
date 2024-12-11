-- sub query or inner query or nested query allow us to creat complex query on the output of anothor query , sub query syntax involves two or more select statement
use rt;
select * from product;
select * from product where price=18;
select * from suppliers where supplierid in (1,16,18);

-- exists 
-- The EXISTS operator is used to test for the existence of any record in a subquery.
select * from suppliers;
select * from suppliers where exists ( select productname from product);
select productname from product;

select * from suppliers where exists ( select productname from product where Product.SupplierID = Suppliers.SupplierID and price=18);
select * from suppliers where exists ( select productname from product where Product.SupplierID = Suppliers.SupplierID and price<10);
SELECT * FROM Customers WHERE CustomerID  IN (SELECT CustomerID FROM Orders);
SELECT * FROM Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders);

select suppliername from suppliers where exists ( select productname from product where product.SupplierID=suppliers.supplierid) order by suppliername;
select * from product where productid = any (select productid from orderdetails where quantity = 5);   --  return match record
select * from product where productid = all (select productid from orderdetails where quantity = 10);  -- all query records should be present  in sub query
select * from orderdetails;
select * from orderdetails where quantity = 5;

