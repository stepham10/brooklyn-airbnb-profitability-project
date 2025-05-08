-- Create table to insurt clean data 

CREATE TABLE silver_ab_nyc_2019_clean (
	id										BIGINT, 
	name									VARCHAR(1000), 
	host_id									BIGINT,
	host_name								VARCHAR(1000),
	neighbourhood_group						VARCHAR(1000),
	neighbourhood							VARCHAR(1000),
	latitude								FLOAT, 
	longitude								FLOAT, 
	room_type								VARCHAR(1000),
	price									FLOAT,
	minimum_nights							INT,
	number_of_reviews						INT,
	last_review								DATE,
	reviews_per_month						FLOAT,
	calculated_host_listings_count			INT,
	availability_365						INT
) 