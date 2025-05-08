-- create main clean table

CREATE TABLE gold_ab_nyc_2019_clean (
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
	number_of_reviews						INT,
	estimated_annual_revenue				INT,
	profitability_tier						VARCHAR(1000),
	minimum_nights							INT,
	last_review								DATE,
	reviews_per_month						FLOAT,
	calculated_host_listings_count			INT,
	availability_365						INT
) 