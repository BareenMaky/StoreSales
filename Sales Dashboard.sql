Use AdventureWorks2019

--Select Querires:
Select * from Sales.SalesOrderHeader

Select oh.[SalesOrderID],[OrderDate],[DueDate],[ShipDate],[Status],[OnlineOrderFlag],[CustomerID]
,oh.[TerritoryID],oh.[ShipMethodID],[SubTotal],[TaxAmt],[UnitPrice],[LineTotal]
,[Freight],[TotalDue],[OrderQty],[SalesOrderDetailID],p.[ProductID],st.Name 'Territory',st.[Group],p.Name 'Product Name',pc.Name 'Product Subcategory',pp.Name 'Product Category'
, od.OrderQty, od.UnitPrice,sm.Name
from Sales.SalesOrderHeader oh 
join sales.SalesOrderDetail od on oh.SalesOrderID=od.SalesOrderID
join sales.SalesTerritory st on st.TerritoryID=oh.TerritoryID
join purchasing.ShipMethod sm on  sm.ShipMethodID=oh.ShipMethodID
join production.Product p on p.ProductID=od.ProductID 
join production.ProductSubcategory pc on p.ProductSubcategoryID=pc.ProductSubcategoryID
join production.ProductCategory pp on pc.ProductCategoryID=pp.ProductCategoryID 


      
      


	  