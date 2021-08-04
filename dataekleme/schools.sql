BULK INSERT schools
FROM 'C:\Users\ASUS\Desktop\data\schools.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)