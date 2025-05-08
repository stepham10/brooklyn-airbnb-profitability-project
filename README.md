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
