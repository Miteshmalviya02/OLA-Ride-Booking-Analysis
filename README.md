# OLA Ride Booking Analysis
### Ride Operations Study | Bengaluru | 1,00,000+ Bookings | SQL · Power BI

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Problem Statement](#problem-statement)
3. [Dashboard Preview](#dashboard-preview)
4. [SQL Analysis](#sql-analysis)
5. [Methodology](#methodology)
6. [Key Insights & Recommendations](#key-insights--recommendations)
7. [Detailed Insights](#detailed-insights)
8. [Recommendations](#recommendations)

---

## Project Overview

This project analyzes **1,00,000+ OLA ride bookings** from Bengaluru over a one-month period (July 2024) to uncover operational inefficiencies, revenue patterns, cancellation drivers, and customer behavior. The goal is to convert raw booking data into actionable insights that operations, product, and marketing teams can use to improve ride success rates, reduce cancellations, and grow revenue.

**Tools Used:** MySQL · Power BI

---

## Problem Statement

OLA operates thousands of rides daily across Bengaluru. The management team needs clarity on the following business questions:

- What is the overall booking success rate and where are rides being lost?
- Which vehicle types generate the most revenue and distance?
- What are the primary reasons for cancellations — by customers and by drivers?
- Which payment methods dominate and who are the top customers?
- Are driver and customer ratings consistent across vehicle types?

> *"How can OLA leverage ride booking data to reduce cancellations, improve ride completion rates, and optimize revenue across vehicle types and payment channels?"*

---

## Dashboard Preview

### 📊 Overall Dashboard
![Overall Dashboard](images/dashboard_overall.png)

### 🚗 Vehicle Type Analysis
![Vehicle Type](images/dashboard_vehicle.png)

### 💰 Revenue Dashboard
![Revenue](images/dashboard_revenue.png)

### ❌ Cancellation Dashboard
![Cancellation](images/dashboard_cancellation.png)

### ⭐ Ratings Dashboard
![Ratings](images/dashboard_ratings.png)

---

## SQL Analysis

### Q1. Retrieve all successful bookings
![Q1](images/sql_q1.png)

### Q2. Find the average ride distance for each vehicle type
![Q2](images/sql_q2.png)

### Q3. Get the total number of cancelled rides by customers
![Q3](images/sql_q3.png)

### Q4. List the top 5 customers who booked the highest number of rides
![Q4](images/sql_q4.png)

### Q5. Get the number of rides cancelled by drivers due to personal and car-related issues
![Q5](images/sql_q5.png)

### Q6. Find the maximum and minimum driver ratings for Prime Sedan bookings
![Q6](images/sql_q6.png)

### Q7. Retrieve all rides where payment was made using UPI
![Q7](images/sql_q7.png)

### Q8. Find the average customer rating per vehicle type
![Q8](images/sql_q8.png)

### Q9. Calculate the total booking value of rides completed successfully
![Q9](images/sql_q9.png)

### Q10. List all incomplete rides along with the reason
![Q10](images/sql_q10.png)

---

## Methodology

### End-to-End Project Flow

```
Raw CSV Data (1L+ rows) → MySQL (SQL Analysis & Views) → Power BI (5-Page Dashboard)
```

### Step 1 — MySQL: Data Setup & SQL Analysis
- Loaded 1,00,000+ booking records into MySQL with 19 columns covering booking status, vehicle type, payment method, ride distance, ratings, and cancellation reasons
- Created **SQL Views** for each business question to enable reusable, clean queries
- Used aggregations, GROUP BY, ORDER BY, COUNT, SUM, AVG, MAX, MIN across 10 business queries
- Structured queries to handle NULL values for cancelled/incomplete rides where ratings and fares don't apply

### Step 2 — Power BI: 5-Page Interactive Dashboard
Built a **5-page Power BI dashboard** with a date slicer (07-Jul to 25-Jul) and navigation panel:

| Page | Visuals |
|---|---|
| Overall | Ride Volume Over Time, Booking Status Breakdown |
| Vehicle Type | Revenue & Distance by Vehicle Type |
| Revenue | Revenue by Payment Method, Top 5 Customers, Ride Distance Per Day |
| Cancellation | Cancelled Rides by Customer Reason, Cancelled Rides by Driver Reason |
| Ratings | Driver Ratings by Vehicle Type, Customer Ratings by Vehicle Type |

---

## Key Insights & Recommendations

> Quick summary of the most important findings. Scroll down for full analysis.

---

### 📊 At a Glance

| Metric | Value |
|---|---|
| Total Bookings | 63,246 |
| Successful Bookings | 39,270 (62.09%) |
| Total Booking Value (Success) | ₹21M |
| Cancellation Rate | 28.08% |
| Cancelled by Driver | 17.94% |
| Cancelled by Customer | 10.14% |
| Driver Not Found | 9.83% |

---

### 🔍 Top Findings

- **Only 62.09% of bookings are successful** — nearly 1 in 3 rides fails to complete
- **28.08% cancellation rate** is a critical operational problem — 17,759 rides lost
- **Driver cancellations (17.94%) are nearly double customer cancellations (10.14%)** — driver-side issues are the bigger problem
- **"Driver not moving towards pickup"** is the #1 customer cancellation reason (30.5%)
- **Personal & car-related issues** drive 35.42% of driver cancellations — fleet reliability is a concern
- **Prime Sedan generates the highest revenue** at ₹5.05M total booking value
- **Cash dominates as the top payment method**, followed by UPI
- **Driver and customer ratings are nearly identical across all vehicle types** (~3.98–4.01) — no major quality gap

---

### 💡 Key Recommendations

- **Penalize or incentivize drivers** to reduce the 17.94% driver cancellation rate — the single biggest revenue leak
- **Fix driver navigation/tracking** — "not moving towards pickup" (30.5%) suggests a GPS or driver motivation issue
- **Improve fleet maintenance program** — 35.42% of driver cancellations are personal/car-related, pointing to poor vehicle upkeep
- **Expand UPI payment adoption** — Cash dominance increases operational risk; push UPI through incentives
- **Target top 5 customers** (CID933539, CID974848 etc.) with loyalty rewards to protect high-value relationships
- **Investigate "Driver Not Found" (9.83%)** — this is a supply-demand mismatch that needs surge pricing or better driver allocation
- **Maintain rating quality** — consistent ~4.0 ratings across all vehicle types is a strength; introduce alerts if any type drops below 3.8

---

## Detailed Insights

### 1. Booking Success & Cancellation Breakdown
Out of 63,246 total bookings, only **39,270 rides succeeded (62.09%)**. The remaining 38% represents significant lost revenue. Driver cancellations at **17.94% (11,350 rides)** are the largest failure point, nearly double the customer cancellation rate of 10.14%.

### 2. Why Customers Cancel
The top reasons customers cancelled rides:
- **Driver not moving towards pickup — 30.5% (1,960 rides)**
- Driver asked to cancel — 25.04% (1,610 rides)
- Change of plans — 20.08% (1,290 rides)
- AC not working — 14.65% (940 rides)
- Wrong address — 9.73% (620 rides)

The first two reasons together account for **55.5% of all customer cancellations** — both are driver behavior issues, not customer issues.

### 3. Why Drivers Cancel
The top reasons drivers cancelled rides:
- **Personal & car related issues — 35.42% (4,020 rides)**
- Customer related issue — 29.55% (3,350 rides)
- Customer was coughing/sick — 19.79% (2,250 rides)
- More than permitted passengers — 15.23% (1,730 rides)

Fleet reliability and customer behavior are the two biggest driver-side problems.

### 4. Vehicle Type Revenue Performance
| Vehicle | Total Booking Value | Success Value | Avg Distance |
|---|---|---|---|
| Prime Sedan | ₹5.05M | ₹3.15M | 24.97 km |
| Prime SUV | ₹4.89M | ₹3.00M | 24.87 km |
| Prime Plus | ₹4.87M | ₹3.04M | 24.99 km |
| Mini | ₹4.88M | ₹2.96M | 24.81 km |
| Auto | ₹4.97M | ₹3.10M | 10.07 km |
| Bike | ₹4.84M | ₹3.02M | 25.04 km |
| E-Bike | ₹4.98M | ₹3.07M | 25.09 km |

Revenue is remarkably balanced across all vehicle types. Auto has a significantly shorter avg distance (10.07 km) compared to all others (~25 km) — expected for short city hops.

### 5. Revenue by Payment Method
Cash is the dominant payment method followed by UPI. Credit and Debit Card usage is significantly lower — indicating a largely cash-first or UPI-first customer base.

### 6. Top 5 Customers by Booking Value
| Customer ID | Total Booking Value |
|---|---|
| CID933539 | ₹5,314 |
| CID974848 | ₹5,107 |
| CID455502 | ₹4,960 |
| CID889014 | ₹4,685 |
| Total (Top 4) | ₹24,658 |

### 7. Driver & Customer Ratings
All vehicle types maintain consistent ratings between **3.98 and 4.01** for both drivers and customers — a sign of stable service quality across the fleet. No vehicle type stands out as significantly better or worse.

---

## Recommendations

### 1. Reduce Driver Cancellations — Top Priority
Driver cancellations at 17.94% is the single biggest operational problem. Introduce a **driver cancellation penalty system** — repeated cancellations should affect driver incentive payouts. Simultaneously, offer bonuses for low-cancellation months to motivate compliance.

### 2. Fix the "Not Moving" Problem
30.5% of customer cancellations happen because the driver isn't moving towards the pickup point. This points to drivers accepting rides without intent to complete them (cherry-picking). Implement **auto-cancellation + penalty** if a driver doesn't start moving within 2 minutes of acceptance.

### 3. Fleet Maintenance Program
35.42% of driver cancellations cite personal & car-related issues. Partner with service centers to offer **subsidized vehicle maintenance** for OLA drivers — healthier vehicles mean fewer mid-route cancellations and breakdowns.

### 4. Push UPI Adoption
Cash dominance creates collection risk and reconciliation overhead. Run **UPI cashback offers** (₹20–50 per ride) for a limited period to shift payment behavior — as Paytm and PhonePe did during their early growth phases.

### 5. Loyalty Program for Top Customers
Top 5 customers alone contribute ₹24,658 in booking value. Build a **OLA loyalty tier** (Silver/Gold/Platinum) with perks like priority booking, no surge, and dedicated driver pools to retain high-value customers.

### 6. Solve the Driver Not Found Problem
9.83% of bookings fail because no driver is available. This is a supply-demand mismatch — use **dynamic surge pricing** in underserved zones and times to attract more drivers to high-demand areas.
