BULK INSERT community
FROM 'C:\Users\ASUS\Desktop\data\community.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)