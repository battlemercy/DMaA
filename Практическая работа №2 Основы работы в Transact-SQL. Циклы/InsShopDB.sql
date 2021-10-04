USE gr691_msi
GO

/* 1 
CREATE TABLE accounts 
(
	account_created_at DATE,
	account_balance MONEY
);*/

/*DECLARE @rate FLOAT, @period INT, @sum MONEY, @date DATE;
SET @date = GETDATE();
SET @rate = 0.075;
SET @period = 7;
SET @sum = 11500;

WHILE @period > 0
	BEGIN
		INSERT INTO accounts VALUES (@date, @sum);
		SET @period = @period - 1;
		SET @date = DATEADD(YEAR, 1, @date);
		SET @sum = @sum + @sum * @rate;
	END;*/

/* 2 

DECLARE @rate FLOAT, @period INT, @sum MONEY, @date DATE;
SET @date = GETDATE();
SET @rate = 0.075;
SET @period = 7;
SET @sum = 11500;

BEGIN TRY
	WHILE @period > 0
		BEGIN
			INSERT INTO accounts VALUES (@date, @sum);
			SET @period = @period - 1;
			SET @date = DATEADD(YEAR, 1, @date);
			SET @sum = @sum + @sum * @rate;
		END;
END TRY

BEGIN CATCH
	 PRINT 'Error ' + CONVERT(VARCHAR, ERROR_NUMBER()) + ':' + ERROR_MESSAGE()
END CATCH;

SELECT * FROM accounts;

DROP TABLE accounts;
*/

/*CREATE PROCEDURE InsShopDB
@rate FLOAT, @period INT, @sum MONEY, @date DATE
AS
BEGIN TRY
	WHILE @period > 0
		BEGIN
			INSERT INTO accounts VALUES (@date, @sum);
			SET @period = @period - 1;
			SET @date = DATEADD(YEAR, 1, @date);
			SET @sum = @sum + @sum * @rate;
		END;
		SELECT * FROM accounts
END TRY

BEGIN CATCH
	 PRINT 'Error ' + CONVERT(VARCHAR, ERROR_NUMBER()) + ':' + ERROR_MESSAGE()
END CATCH;*/

/*EXEC InsShopDB 0.15, 3, 33000, '2020-07-21'*/