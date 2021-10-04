USE gr691_msi
GO

/*ALTER TABLE products
ADD product_country NVARCHAR(20)*/

/*CREATE PROCEDURE insOrderAutoPrice 
	@productId INT,
	@customerId INT,
	@createdAt DATE,
	@productCount INT
AS
INSERT INTO orders
VALUES (@productId, @customerId, @createdAt, @productCount, 
	   (SELECT @productCount * product_price FROM products WHERE product_id = @productId))*/
	   
/*EXEC insOrderAutoPrice 5, 3, '2020-08-12', 10;
SELECT * FROM orders;*/
