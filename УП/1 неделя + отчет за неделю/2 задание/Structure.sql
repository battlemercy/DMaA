USE gr691_msi
GO

CREATE TABLE Storage
(
	ID INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
);

CREATE TABLE Type
(
	ID INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL
);

CREATE TABLE Provider
(
	ID INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Juridical_Address VARCHAR(200) NOT NULL,
	Contact_Phone VARCHAR(11) NOT NULL
);

CREATE TABLE Product
(
	ID INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	TypeID INT FOREIGN KEY REFERENCES Type (ID),
	Production_Date SMALLDATETIME,
	Expiration_Date SMALLDATETIME,
	Delivery_Date SMALLDATETIME,
	Price SMALLMONEY,
	StorageID INT FOREIGN KEY REFERENCES Storage (ID),
	ProviderID INT FOREIGN KEY REFERENCES Provider (ID),
	Amount INT
);