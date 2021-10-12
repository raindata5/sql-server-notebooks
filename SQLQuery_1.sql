/* a good book not much to say 
1) Does it cover a good range of T-SQL?

2) Is it easy to learn from the content?
*/


-- 4-1

--8 data type


-- 4-3

-- 2) char 10-15

USE AdventureWorks2019
go
SELECT
    SUBSTRING(AddressLine1,10,5)
from Person.Address ;

-- 4)

SELECT
    substring(ProductNumber,CHARINDEX('-',ProductNumber)+ 1,LEN(ProductNumber) - CHARINDEX('-',ProductNumber)+ 1)
from Production.Product ;

-- 6)
use WideWorldImporters
go
select 
    CustomerName,
    substring(customername,CHARINDEX('(',customername),CHARINDEX(')',customername) - CHARINDEX('(',customername) + 1 )
from Sales.Customers;

