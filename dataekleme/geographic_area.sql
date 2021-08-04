BULK INSERT geographic_area
FROM 'C:\Users\ASUS\Desktop\data\geographic_area.csv'
WITH
(
    FORMAT = 'CSV', 
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n'
)