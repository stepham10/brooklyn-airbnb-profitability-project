-- join the 2 tables 
INSERT INTO gold_ab_nyc_2019_clean (
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
	number_of_reviews,						
	estimated_annual_revenue,				
	profitability_tier,													
	minimum_nights,												
	last_review,								
	reviews_per_month,
	calculated_host_listings_count,
	availability_365
)

SELECT 
	c.id,										 
	c.name,
	c.host_id, 
	c.host_name,								
	c.neighbourhood_group,						
	c.neighbourhood,							
	c.latitude,								
	c.longitude,							
	c.room_type,								
	c.price,
	c.number_of_reviews,
	a.estimated_annual_revenue,
	a.profitability_tier,
	c.minimum_nights,													
	c.last_review,								
	ROUND(c.reviews_per_month,2) AS reviews_per_month,
	c.calculated_host_listings_count,
	c.availability_365
FROM silver_ab_nyc_2019_clean AS c
LEFT JOIN silver_ab_nyc_2019_aggregate AS a
ON a.id = c.id;