BULK INSERT program_types
FROM 'C:\Users\ASUS\Desktop\data\program_types.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)