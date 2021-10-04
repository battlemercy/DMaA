USE gr691_msi
GO

/*CREATE PROCEDURE productSummary AS
BEGIN
    SELECT product_name AS product, product_manufacturer, product_price
    FROM products
END;

CREATE PROCEDURE addProduct
    @name NVARCHAR(20),
    @manufacturer NVARCHAR(20),
    @count INT,
    @price MONEY
AS
INSERT INTO products(product_name, product_manufacturer, product_count, product_price)
VALUES(@name, @manufacturer, @count, @price)

CREATE PROCEDURE addProductWithOptionalCount
    @name NVARCHAR(20),
    @manufacturer NVARCHAR(20),
    @price MONEY,
    @count INT = 1
AS
INSERT INTO products(product_name, product_manufacturer, product_count, product_price)
VALUES(@name, @manufacturer, @count, @price)*/

/*exec productSummary;*/

/*DECLARE @prodName NVARCHAR(20), @company NVARCHAR(20);
DECLARE @prodCount INT, @price MONEY
SET @prodName = 'Galaxy C7';
SET @company = 'Samsung';
SET @price = 22000;
SET @prodCount = 5;

EXEC addProduct @prodName, @company, @prodCount, @price; 

SELECT * FROM products;*/

/*DECLARE @prodName NVARCHAR(20), @company NVARCHAR(20), @price MONEY;
SET @prodName = 'Redmi Note 5A';
SET @company = 'Xiaomi';
SET @price = 22000;

EXEC addProductWithOptionalCount @prodName, @company, @price;

SELECT * FROM products;*/

/*CREATE PROCEDURE last10DaysOrders AS
       SELECT * FROM orders 
	   WHERE DATEDIFF(DAY, order_created_at, GETDATE()) <= 10*/

/*EXEC last10DaysOrders;*/

/*CREATE PROCEDURE summaryOfAllOrders AS
SELECT COUNT(*) AS 'Количество заказов', SUM(order_product_count * CAST(order_price AS FLOAT)) AS 'Общая сумма' FROM orders;*/

/*EXEC summaryOfAllOrders;*/

/*CREATE PROCEDURE avgOrder AS
SELECT order_id, product_name AS product, customer_last_name AS customer, order_created_at, order_product_count, order_price 
FROM products INNER JOIN (orders INNER JOIN customers ON order_customer_id = customer_id) ON order_product_id = product_id
WHERE order_price < (SELECT AVG(order_price) FROM orders)
*/

/*EXEC avgOrder;*/
