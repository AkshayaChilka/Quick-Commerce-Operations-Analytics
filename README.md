🛒 Quick Commerce Analytics — India Market Intelligence

End-to-end data analysis project covering 948K+ orders across 9 major quick-commerce platforms in India — including Blinkit, Swiggy Instamart, Zepto, BigBasket, Dunzo, Flipkart Minutes, Amazon Now, and Jio Mart.


📌 Project Overview
This project analyzes real-world quick-commerce order data to uncover patterns in revenue performance, delivery efficiency, customer behavior, and discount strategy. The pipeline spans data cleaning in Python, exploratory data analysis, SQL querying, and a 3-page Power BI dashboard.
Dataset: ~948K orders | 13 features | 8 Indian cities
Tools: Python (Pandas, NumPy, Matplotlib, Seaborn) · MySQL · Power BI

📂 Repository Structure
quick-commerce-analytics/
│
├── data_cleaning.ipynb              # Data wrangling, EDA, correlation heatmap
├── quick_commerce_sql_queries.sql   # 30+ SQL queries across 8 analytical domains
├── dashboard/
│   ├── page1_executive_overview.png
│   ├── page2_delivery_performance.png
│   └── page3_customer_product_insights.png
└── README.md

🔍 Key Findings
📦 Order & Revenue

Total Revenue: ₹541M across 948K orders with an average order value of ₹570.91
Swiggy Instamart leads revenue at ₹76M, followed closely by Blinkit (₹72M) and Zepto (₹70M)
All 8 cities (Hyderabad, Delhi, Kolkata, Amritsar, Mumbai, Gurgaon, Bengaluru) show near-equal order volumes (~79K each), indicating uniform demand distribution

🚚 Delivery Performance

Average delivery time: 16.51 minutes | Delay rate: only 8.34% of orders
Haridwar is the slowest city (28 min avg); Pune and Amritsar are fastest (16 min)
All companies maintain an average delivery partner rating of 3.8/5; Flipkart Minutes and Blinkit tie at the top
Delivery efficiency score averages 0.52 across the platform

🛍️ Customer & Product

Dairy, Groceries, and Snacks are the top categories — each capturing ~14% of total orders
Medium-value customers form the largest segment (40.84%), followed by High (33.11%) and Low (26.05%)
Orders with discounts show ~50% higher average order value (₹712 vs ₹476), validating discount-driven upsell strategies
Small basket sizes dominate (69.48%), suggesting frequent, low-quantity top-up shopping behavior

💳 Payment

Payment methods are near-evenly distributed across Cash on Delivery, Credit Card, Debit Card, UPI, and Wallet (~20% each), reflecting diverse payment preferences


🧹 Data Cleaning Highlights (data_cleaning.ipynb)

Loaded and validated 947,752 rows × 13 columns — zero null values post-cleaning
Engineered derived features: delay_flag, discount_flag, delivery_efficiency, customer_segment, order_size
Standardized column names and data types (8 int, 1 float, 4 object)
Generated correlation heatmap to identify relationships between delivery time, distance, order value, and ratings


🗃️ SQL Analysis (quick_commerce_sql_queries.sql)
Covers 8 analytical domains with 30+ queries:
DomainFocusA. Order & RevenueTotal revenue, revenue by company, AOVB. City AnalysisOrders, revenue, and avg delivery time by cityC. Delivery PerformanceDelay %, efficiency by companyD. Product AnalysisOrders and revenue by categoryE. Customer AnalysisAge, segment distribution, ratingsF. Payment AnalysisPayment method breakdownG. Discount AnalysisDiscount impact on order valueH. Partner AnalysisDelivery partner ratings by company

📊 Power BI Dashboard
Three-page interactive dashboard with slicers for company-level filtering:
PageTitle1Executive Overview — KPIs, Revenue by Company, Orders by City2Delivery Performance Analytics — Delay distribution, Distance vs Time scatter3Customer & Product Insights — Segment distribution, Discount impact, Ratings

🚀 How to Run

Python EDA: Open data_cleaning.ipynb in Jupyter. Requires pandas, numpy, matplotlib, seaborn.
SQL: Import dataset into MySQL and run quick_commerce_sql_queries.sql against the quick_commerce database.
Dashboard: Open the .pbix file in Power BI Desktop.


💡 Business Recommendations

Target high-value customers with loyalty and retention campaigns
Optimize discount strategies — discounts demonstrably increase basket size; deploy selectively during off-peak hours
Investigate Haridwar delivery lag — 28-min average is 70% above the fastest cities
Bundle product categories (e.g., Dairy + Groceries) to increase average items per order beyond the current 10.31



## Project Screenshots

### Executive Overview
![Page 1](screenshots/<img width="1919" height="984" alt="Screenshot 2026-05-13 161543" src="https://github.com/user-attachments/assets/d725c3a2-1c61-4fb6-850c-20d0779ded05" />
)

### Delivery Performance Analytics
![Page 2](screenshots/<img width="1919" height="984" alt="Screenshot 2026-05-13 161607" src="https://github.com/user-attachments/assets/989d94ee-8251-44a9-944f-0b142712edbc" />
)

### Customer & Product Insights
![Page 3](screenshots/<img width="1919" height="989" alt="Screenshot 2026-05-13 161628" src="https://github.com/user-attachments/assets/d6a5af56-8ed2-4eac-83cb-abe6d4fcd96b" />
)

👤 Author
Akshaya Chilka
Data Analyst | Python · SQL · Power BI
📍 Hyderabad, India
