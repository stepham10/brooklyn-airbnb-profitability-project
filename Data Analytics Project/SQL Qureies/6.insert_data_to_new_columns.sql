-- insert data into aggregate table 

INSERT INTO silver_ab_nyc_2019_aggregate (
	id,										 
	estimated_annual_revenue,
	profitability_tier
)

SELECT
id,
ROUND(price * reviews_per_month * 12,2) AS estimated_annual_revenue, 
CASE 
	WHEN ROUND(price * reviews_per_month * 12,2) >= 4000 THEN 'High'
	WHEN ROUND(price * reviews_per_month * 12,2) >= 2000 THEN 'Medium'
	Else 'Low'
END AS profitability_tier
FROM dbo.silver_ab_nyc_2019_clean;

