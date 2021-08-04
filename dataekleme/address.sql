BULK INSERT address
FROM 'C:\Users\ASUS\Desktop\data\address.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)