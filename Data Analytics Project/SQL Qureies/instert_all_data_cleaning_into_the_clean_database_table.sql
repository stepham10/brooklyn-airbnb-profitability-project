-- Instert all data cleaning into the clean database table 

INSERT INTO silver_ab_nyc_2019_clean (
	id,										 
	name,
	host_id, 
	host_name,								
	neighbourhood_group,						
	neighbourhood,							
	latitude,								
	longitude,							
	room_type,								
	price,									
	minimum_nights,							
	number_of_reviews,						
	last_review,								
	reviews_per_month,
	calculated_host_listings_count,
	availability_365
)

SELECT
id, 
name, 
host_id, 
TRIM(host_name) AS host_name,
neighbourhood_group,
neighbourhood,
latitude, 
longitude, 
CASE WHEN room_type = 'Shared room' THEN 'Shared Room'
	 WHEN room_type = 'Entire home/apt' THEN 'Entire Place'
	 WHEN room_type = 'Private room' THEN 'Private Room'
	 ELSE 'n/a'
END room_type,
price, 
minimum_nights,
number_of_reviews,
CASE WHEN last_review = '1899-12-30' THEN NULL
	 ELSE CAST(last_review AS Date)
END last_review,
reviews_per_month,
calculated_host_listings_count,
availability_365
FROM
dbo.AB_NYC_2019_Clean