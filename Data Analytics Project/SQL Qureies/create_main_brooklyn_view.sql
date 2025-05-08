-- create view brooklyn only
CREATE VIEW view_gold_ab_nyc_2019_clean_brooklyn AS

SELECT * 
FROM dbo.gold_ab_nyc_2019_clean
WHERE neighbourhood_group = 'Brooklyn'