BULK INSERT school_type
FROM 'C:\Users\ASUS\Desktop\data\school_type.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)