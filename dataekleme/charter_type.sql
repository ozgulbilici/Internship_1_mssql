BULK INSERT charter_type
FROM 'C:\Users\ASUS\Desktop\data\charter_type.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n'
)