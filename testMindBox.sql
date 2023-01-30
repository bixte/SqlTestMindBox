CREATE TABLE Product
(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	ProductName nvarchar(100) NOT NULL
)

CREATE TABLE Category
(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	CategoryName NVARCHAR(100) NOT NULL
)

CREATE TABLE ProductCategory
(
	ProductId INT NOT NULL FOREIGN KEY REFERENCES Product(Id),
	CategoryId INT NOT NULL FOREIGN KEY REFERENCES Category(Id),
	PRIMARY KEY (ProductId, CategoryId)
)

SELECT p.ProductName, c.CategoryName
FROM Product p
LEFT JOIN ProductCategory 
ON p.Id = ProductCategory.ProductId
LEFT JOIN Category c
ON ProductCategory.CategoryId = c.Id