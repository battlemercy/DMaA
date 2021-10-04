USE gr691_msi
GO

/*SELECT order_id, 
(SELECT customer_last_name FROM customers WHERE customer_id = order_customer_id) 'Фамилия заказчика', 
(SELECT product_name FROM products WHERE product_id = order_product_id) 'Товар', 
		order_created_at 'Дата заказа' 
FROM orderProduct inner join orders ON order_id = id_Order
WHERE MONTH(order_created_at) BETWEEN 9 AND 11 AND YEAR(order_created_at) = 2020;*/

/*SELECT CONCAT(YEAR(order_created_at),' г.') 'год', COUNT(1) 'Количество заказов' 
FROM orders GROUP BY YEAR(order_created_at) ORDER BY YEAR(order_created_at);*/

/*SELECT order_id, 
(SELECT customer_last_name FROM customers WHERE customer_id = order_customer_id) 'Фамилия заказчика', 
(SELECT product_name FROM products WHERE product_id = id_Product) 'Товар', 
		order_created_at 'Дата заказа' 
FROM orderProduct INNER JOIN orders ON id_Order = id_Order*/
