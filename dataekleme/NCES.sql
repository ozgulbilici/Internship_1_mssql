BULK INSERT NCES
FROM 'C:\Users\ASUS\Desktop\data\NCES.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)