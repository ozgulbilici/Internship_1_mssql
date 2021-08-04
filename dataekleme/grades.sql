BULK INSERT grades
FROM 'C:\Users\ASUS\Desktop\data\grades.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)