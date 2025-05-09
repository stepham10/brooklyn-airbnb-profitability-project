# Brooklyn Airbnb Profitability Project

## Overview

This project aims to help Airbnb hosts in Brooklyn, NY, optimize profitability during the peak summer travel season (June–August 2025). By analyzing historical Airbnb listing data, we identify trends, pricing strategies, and neighborhood-level insights that can drive smarter decisions for both independent hosts and property managers.

## Objectives

1. Identify high-revenue neighborhoods and room types in Brooklyn.
2. Determine optimal pricing and availability patterns for peak summer months.
3. Classify Airbnb listings into profitability tiers (High, Medium, Low).
4. Design an interactive Power BI dashboard for host exploration and strategy.
5. Deliver clear business recommendations based on SQL-driven data analysis.

---

## User Personas

### Emily (Independent Host)
- Owns a single listing in Crown Heights.
- Wants to price competitively and increase summer bookings.

### Jose (Property Manager)
- Manages 12 listings across Brooklyn.
- Needs to prioritize listings for ads and dynamic pricing strategies.

---

## Dashboard Preview

!dashboard.png

### Dashboard Features
![dashboard](https://github.com/user-attachments/assets/d021ea35-9e3e-460c-88fa-9e2fdc034a58)

- **Filters:** Neighborhood, Room Type, Profitability Tier
- **KPIs:** Avg. Estimated Annual Revenue, Occupancy %, Total Listings
- **Charts:**
  - Seasonal Review Trends
  - Top Revenue-Generating Neighborhoods
  - Price vs. Review Frequency (Scatter Plot)
  - Room Type Distribution

---

## Methodology

### 🔧 Data Preparation
- Source: NYC Airbnb Open Data from Kaggle
- Focused on Brooklyn listings only
- Created new fields:
  - `Estimated Annual Revenue` = `price × availability_365`
  - `Profitability Tier` based on revenue distribution
  - `Review Frequency` = `number_of_reviews / (listing_age_in_years)`

### SQL Analysis (Key Metrics)
- Average revenue by neighborhood and room type
- Host concentration: single vs. multi-listing impact
- Occupancy proxy via `reviews_per_month`
- Pricing sweet spots for high engagement

---

## Insights & Recommendations

### 1. Neighborhood Profitability
- **East Flatbush** and **Park Slope** are top neighborhoods by average annual revenue.
- **Greenpoint** and **Bushwick** show potential but have lower current listing volume.

### 2. Optimal Room Types
- **Entire Places** dominate revenue generation but also have higher competition.
- **Private Rooms** show strong performance in review frequency vs. price.

### 3. Seasonal Demand
- Summer shows a clear peak in review volume, indicating higher guest activity.
- Hosts should increase availability and consider slight price increases in summer.

### 4. Price vs. Review Frequency
- Listings priced between **$100–$200** per night with strong review counts perform best.
- Avoid overpricing beyond $300 unless offering exceptional value.

### 5. Host Strategy
- Hosts with multiple listings have economies of scale but also face concentration risk.
- Encourage new host onboarding in underserved neighborhoods.

---
