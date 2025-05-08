-- Create 'Brooklyn' Only View

CREATE VIEW view_ab_nyc_2019_clean_brooklyn AS

SELECT * 
FROM dbo.silver_ab_nyc_2019_clean
WHERE neighbourhood_group = 'Brooklyn'