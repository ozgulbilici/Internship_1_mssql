BULK INSERT school_category
FROM 'C:\Users\ASUS\Desktop\data\school_category.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)