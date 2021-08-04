BULK INSERT school_program_types
FROM 'C:\Users\ASUS\Desktop\data\school_program_types.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)