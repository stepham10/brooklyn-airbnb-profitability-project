-- Check for NULLs or Duplicates in the Primary Key 
-- Expectation: No Result 

SELECT id, COUNT(*)
FROM dbo.AB_NYC_2019_Clean
GROUP BY id 
HAVING COUNT (*) > 1 OR id IS NULL 

-- Check for unwanted spaces 
-- Expectation: No Results 
SELECT neighbourhood
FROM dbo.AB_NYC_2019_Clean
WHERE neighbourhood != TRIM(neighbourhood) 

-- Data Standardization & Consistency 
SELECT DISTINCT room_type
FROM dbo.AB_NYC_2019_Clean

-- Check for Invalid Dates 
SELECT 
CASE WHEN last_review = '1899-12-30' THEN NULL
	 ELSE CAST(last_review AS Date)
END last_review 
FROM dbo.AB_NYC_2019_Clean