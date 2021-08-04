BULK INSERT governance
FROM 'C:\Users\ASUS\Desktop\data\governance.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)