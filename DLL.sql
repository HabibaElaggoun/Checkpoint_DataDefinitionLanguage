CREATE TABLE Product (
    Product_id VARCHAR(20) CONSTRAINT PId PRIMARY KEY,
    Product_Name VARCHAR(20) CONSTRAINT PName NOT NULL,
    Price NUMBER CONSTRAINT price CHECK (Price>0)
)

CREATE TABLE Customer (
    Customer_id VARCHAR(20) CONSTRAINT CId PRIMARY KEY,
    Customer_Name VARCHAR(20) CONSTRAINT CName PRIMARY KEY,
    Customer_Tel NUMBER
)

CREATE TABLE Orders (
    Customer_id VARCHAR(20),
    Product_id VARCHAR(20),
    Quantity NUMBER,
    Total_amount NUMBER,
   
    CONSTRAINT C_orders FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    CONSTRAINT P_orders FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
    CONSTRAINT CP_orders PRIMARY KEY (Customer_id, Product_id)
);

ALTER TABLE Product ADD Category VARCHAR(20);
ALTER TABLE Orders ADD OrderDate DATE CONSTRAINT date DEFAULT(SYSDATE);