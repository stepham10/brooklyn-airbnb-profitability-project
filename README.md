#  Brooklyn Airbnb Profitability Dashboard

## Project Overview

This project aims to **optimize Airbnb host profitability in Brooklyn** during the peak summer months (June–August 2025). A group of 50 independent Airbnb hosts partnered with our consulting firm to gain data-driven insights into pricing, availability, occupancy, and neighborhood performance. Using historical Airbnb data, we built an interactive Power BI dashboard and SQL-based analysis to inform their business strategies.

---

## Objectives

- Identify high-revenue neighborhoods and room types.
- Recommend optimal pricing and availability strategies for summer months.
- Classify listings into profitability tiers (High, Medium, Low).
- Develop an interactive dashboard to explore scenarios and compare host performance.
- Provide clear, actionable recommendations for increasing occupancy and revenue.

---

## Dataset

**File**: `AB_NYC_2019.csv`  
**Source**: Inside Airbnb (2019 snapshot)  
**Location**: Brooklyn, New York City  
**Key Fields**:
- `id`, `host_id`, `neighbourhood`, `room_type`, `price`, `number_of_reviews`, `availability_365`, `minimum_nights`, `reviews_per_month`, `calculated_host_listings_count`

---

## Tools Used

- **SQL (MySQL)** – Data extraction, transformation, and profitability calculations
- **Power BI** – Dashboard creation and interactive visualizations
- **Excel/CSV** – Data cleaning and initial exploration

---

## SQL Workflow Summary

### Step 1: Data Cleaning & Validation
**File:** `1.database_cleaning_validation.sql`  
**Purpose:**  
- Removed duplicates, standardized null values, validated data types.
- Checked for missing or extreme values in critical columns (`price`, `availability_365`, `reviews_per_month`).

**Key Output:** A clean dataset ready for transformation and analysis.

### Step 2: Data Enhancement & Transformation
**File:** `6.insert_data_to_new_columns.sql`  
**Purpose:**  
- Created new columns for:
  - **Estimated Monthly Revenue** = `price * minimum_nights * number_of_reviews`
  - **Estimated Annual Revenue** = `estimated_monthly_revenue * 12`
  - **Profitability Tiering** based on revenue quantiles (High, Medium, Low)

**Key Output:** Enriched listings with profitability insights.

### Step 3: Table Joins for Final Analysis
**File:** `8.join_tables.sql`  
**Purpose:**  
- Joined listings data with host and calendar data.
- Calculated occupancy rates and review frequency.
- Aggregated revenue and availability by neighborhood, host type, and room type.

**Key Output:** Final analytics-ready table with profitability dimensions.

## Business Insights & Recommendations

### 1. High-Revenue Neighborhoods
- Top: *Williamsburg, Park Slope, Greenpoint, Bedford-Stuyvesant*
- **Action:** Target ads and upgrades in these areas.

### 2. Room Type Strategy
- **Entire homes/apts** yield highest returns.
- **Action:** Recommend entire unit listings where feasible.

### 3. Pricing Strategy
- Sweet spot: **$150–$250** for listings with frequent reviews.
- **Action:** Reposition prices into this band during summer.

### 4. Availability Optimization
- Listings with **>300 available days/year** outperform.
- **Action:** Maximize availability but avoid >330 days to reduce diminishing returns.

### 5. Host Strategy
- **Single Listing Hosts (e.g., Emily):**
  - Price in the $150–$200 range.
  - Benchmark against high-performing neighborhoods.
- **Portfolio Managers (e.g., Jose):**
  - Focus on high-tier listings.
  - Reprice and reposition underperforming assets.

### 6. Profitability Tiering
- Segmented into **High, Medium, Low** based on revenue percentiles.
- **Action:**
  - Promote high-tier listings.
  - Enhance medium-tier with amenities/photos.
  - Consider delisting or repurposing low-tier ones.

## Deliverables

- [x] SQL Queries & Views (cleaning, revenue estimation, joins)
- [x] Interactive Dashboard (Power BI/Tableau)
- [x] Business Report & Recommendations (Markdown/PDF)
- [x] Data Dictionary for all derived fields
