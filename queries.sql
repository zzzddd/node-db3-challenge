-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

select c.CategoryName as Category, p.ProductName as Product
from [Product] as p
    join Category as c on p.CategoryId = c.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT ProductName
, Quantity
FROM OrderDetail AS o
    JOIN Product AS P ON o.ProductID = p.ProductID
WHERE OrderID = 10251
ORDER BY ProductName;





-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT ProductName
, Quantity
FROM OrderDetail AS o
    JOIN Product AS P ON o.ProductID = p.ID
WHERE OrderID = 10251
ORDER BY ProductName;


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT CategoryName
, COUNT(ProductName) AS Count
FROM Product AS p
    JOIN Categorie AS c ON p.CategoryID = c.CategoryID
GROUP BY CategoryName;