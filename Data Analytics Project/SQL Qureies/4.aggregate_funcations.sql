-- Estimated_Annual_Revenue = price × reviews_per_month × 12 
SELECT price, reviews_per_month, ROUND(price * reviews_per_month * 12,2) AS estimated_annual_revenue
  FROM dbo.silver_ab_nyc_2019_clean 

-- Classify Profitability Tiers 
SELECT 
price, 
ROUND(reviews_per_month,2) AS reviews_per_month, 
ROUND(price * reviews_per_month * 12,2) AS estimated_annual_revenue, 
CASE 
	WHEN ROUND(price * reviews_per_month * 12,2) >= 4000 THEN 'High'
	WHEN ROUND(price * reviews_per_month * 12,2) >= 2000 THEN 'Medium'
	Else 'Low'
END AS profitability_tier
FROM dbo.silver_ab_nyc_2019_clean 

