# Fashion Retail Sales Analysis - [SQL + Excel]

## 🎯 Business Goal
This project focuses on analyzing an online fashion retailer operating across multiple countries. The analysis covers key business areas such as sales performance, pricing, seasonality, and inventory levels. The dataset spans 10 years of historical data (2014–2024), allowing for long-term trend and pattern analysis.

## 🗂️ Data & Methodology
Data source: 

This project uses synthetic data generated with ChatGPT for analytical and educational purposes.

Methodology:

1. Data quality assessment and validation.
2. Data cleaning (removal of duplicates, standardization of date formats, and value normalization).
3. Data preparation and analysis using MySQL.
4. Results visualization and calculation in Excel.

The detailed data cleaning and preparation process is described in a separate project, linked below.
https://github.com/KamilaPasternak/retail-sales-data-cleaning-exploratory-analysis

## 📊 Results
### 1. Revenue Trend Over Time
The chart below shows annual revenue from 2015 to 2024, along with year-over-year percentage growth.

<img width="1187" height="622" alt="image" src="https://github.com/user-attachments/assets/5013c3ae-fc43-47a0-9fbc-2f657f295483" />

The company recorded positive growth every year. The highest growth was observed in 2016, after which it stabilized at around 3–4%, declining to just 1% in 2023. In 2024, growth increased again to 5%.

### Revenue Growth Drivers
To analyze what actually drove the growth, I compared the total annual sales volume with the average annual selling price. 

<img width="1014" height="572" alt="image" src="https://github.com/user-attachments/assets/106a555a-c354-4bff-96a2-c205a9da9b5e" />

From the chart, it can be concluded that the highest revenue growth in 2016 resulted from a combination of increases in both factors. In contrast, the weaker performance in 2023 was mainly driven by a decline in sales volume.

### Market Consistency Across Countries
When comparing the three key metrics — revenue, average price, and quantity sold — only quantity showed noticeable differences between countries on a year-by-year basis. Revenue and average price remained relatively consistent across all markets.

However, when analyzing the full 10-year period in aggregate, no significant differences were observed between countries across any of the examined indicators, suggesting a broadly uniform sales pattern across markets.

### Seasonal Sales Patterns
Seasonality in sales was evaluated by analyzing average monthly revenue across multiple years to identify recurring patterns in customer demand.

<img width="1408" height="676" alt="image" src="https://github.com/user-attachments/assets/4b58bd5f-938c-41b8-b48e-40d394a3532a" />

What it shows: 
* long-term growth,
* declines,
* repeated peaks. 

To assess seasonality, I aggregated revenue by month and calculated monthly averages.

<img width="1057" height="599" alt="image" src="https://github.com/user-attachments/assets/89458f54-1d75-44a4-a470-c89a6f0ee0dd" />

This highlights distinct recurring peaks, confirming a strong seasonal pattern in the dataset.

The lowest sales levels were recorded at the beginning of the year, particularly in January and February, followed by gradual growth throughout the remaining months.
The analysis revealed a clear seasonal pattern, with revenue peaking in November and December, likely driven by holiday shopping demand.

### 2. Sales Performance by Product Category
Product category analysis was conducted to determine which categories contributed the most to overall sales performance.

<img width="752" height="452" alt="image" src="https://github.com/user-attachments/assets/c418fc77-c409-4d88-b7eb-785ff01fc875" />

The two leading categories, Shoes and Women, together accounted for 53% of total revenue.

To identify the strongest-performing product categories, sales data was analyzed by category using three key indicators: total revenue, sales volume, and average selling price.

<img width="1118" height="662" alt="image" src="https://github.com/user-attachments/assets/6475c764-5c5b-4b86-acd0-54fa4f259761" />

Bubble size represents total revenue, highlighting how sales volume and average price jointly influenced category performance.

Shoes generated high revenue primarily due to the highest average price, despite only moderate sales volume. In contrast, the Women category combined the highest sales volume with the second-highest average price, making it a strong contributor across both pricing and quantity dimensions.
It is worth noting that the Kids category recorded the highest sales volume, while at the same time having the lowest average selling price among all categories. This may indicate an opportunity for further pricing strategy optimization within this segment.

The relative performance of product categories remained stable over the 10-year period. Although all categories showed steady growth, their ranking and proportional contribution did not significantly change over time.

I also examined whether seasonal sales patterns existed across categories. Seasonal fluctuations were consistent across all categories, suggesting that customer purchasing behavior followed similar patterns regardless of product type.

To assess whether higher-priced product segments were associated with lower sales volume, subcategory-level sales quantities were compared against average base prices within each main product category.

<img width="1080" height="591" alt="image" src="https://github.com/user-attachments/assets/2532caeb-e3b1-4787-9e65-27a25bc9acab" />

Subcategory analysis indicated that pricing alone was not a reliable predictor of sales volume. Neither higher-priced nor lower-priced subcategories consistently showed expected sales patterns. Instead, demand appeared to be more strongly influenced by product type.

Four subcategories stood out due to their exceptionally high sales volumes despite being positioned within the mid-price range. However, this trend was not consistent across all mid-priced products, suggesting that factors other than price also played an important role in customer demand.

### 3. Discount Impact Analysis
Approximately 12% of records in the `discount_pct` column contained empty strings instead of numeric values. These were converted to NULL to preserve missing-value information during analysis.
Discount values were categorized into three groups: missing values (NULL), orders without discounts (0%), and orders with active discounts (>0%). Only records with confirmed discount values greater than zero were used for promotion impact analysis.

The following analysis was conducted to evaluate how discounts affected sales performance, pricing strategy, and customer purchasing behavior.

<img width="828" height="452" alt="image" src="https://github.com/user-attachments/assets/1b112e70-6864-4d37-977b-53e692687741" />
<img width="1065" height="49" alt="image" src="https://github.com/user-attachments/assets/89a5b64d-8669-4400-a93d-f4148b9b4898" />

The average discount applied to promotional orders was 14.17%, with discounts ranging from 0.01% to 60.58%. Discounted transactions accounted for a substantial share of total orders, indicating that promotional pricing was a common sales strategy.

Discount analysis across countries and product categories showed highly consistent patterns. Average discount levels, discount ranges, and the share of discounted orders were nearly identical across all segments.

To assess whether larger discounts stimulated customer purchases, transactions with active discounts were grouped into discount ranges and compared based on average sales volume.

<img width="809" height="452" alt="image" src="https://github.com/user-attachments/assets/aa1f76a6-2077-4d5f-a4b0-ba05f010acb3" />
<img width="508" height="121" alt="image" src="https://github.com/user-attachments/assets/11da4cb3-21f7-4c39-8f5f-15729c961e3a" />

The analysis showed that increasing discount levels had almost no impact on sales volume. Average quantity remained nearly identical across all discount ranges, suggesting that larger discounts did not significantly encourage customers to purchase more items per order.

Most discounted transactions were concentrated in the 10–20% range, while discounts above 30% were used relatively infrequently.

### 4. Inventory Performance Analysis
To assess inventory efficiency, stock levels were analyzed across countries to identify products at risk of stock shortages, outdated inventory, and overstock situations.

Inventory condition rules

This analysis segments inventory to identify operational risks related to stock levels and data freshness. Products are classified based on low stock and outdated inventory records, with results aggregated by country to highlight key risk areas across markets.

* Low stock only: sufficient data recency, but low inventory levels (≤ 15 units)
* Outdated only: acceptable stock levels, but outdated inventory data
* Both issues: low stock combined with outdated data, indicating the highest risk segment

<img width="751" height="452" alt="image" src="https://github.com/user-attachments/assets/80c56735-83ad-4e63-9dd1-03b451c3737d" />

Across all countries, inventory issues were relatively consistent, averaging around 16%.

<img width="785" height="452" alt="image" src="https://github.com/user-attachments/assets/e3720324-c61b-4e02-96ea-d8036a3d747c" />

Initial inventory checks showed a relatively balanced stock distribution across countries. However, Poland recorded the highest number of low-stock products, while Germany had the highest number of outdated items.

### Overstocked Inventory
The goal of next analysis was to assess and identify overstock levels across different markets based on the relationship between inventory and sales.

Inventory classification logic

Products were categorized based on the ratio between stock quantity and sales to assess inventory health across countries (the analyzed period is the last six months).

* Dead Stock: no sales and positive stock (sales = 0 AND stock > 0)
* Extreme Overstock: stock-to-sales ratio > 50
* Overstock: stock-to-sales ratio between 20 and 50
* Healthy: all remaining products

<img width="725" height="97" alt="image" src="https://github.com/user-attachments/assets/8a8709df-02e1-4550-aa50-202b8aa447c7" />

A significant inventory imbalance was identified across all analyzed markets. More than half of the products in each country were classified as dead stock, indicating items with available inventory but no recorded sales during the analyzed period.

Additionally, a substantial share of products was classified as overstocked or extremely overstocked, suggesting potential inefficiencies in stock allocation and replenishment planning.

### 5. Key Findings
* The company is experiencing consistent year-over-year revenue growth.
* The profit is primarily due to an increase in sales volume rather than an increase in average selling price.
* Analysis by country revealed a consistent sales pattern across all markets.
* In a global context, seasonality is present, with November and December being the best months for sales.
* Shoes and Women were the dominant categories, jointly contributing 53% of total revenue. 
* All categories showed a similar seasonal trend.
* There is no correlation between the average price of a subcategory and sales volume.
* Discounting on orders was common.
* No significant differences in discount strategy were observed across countries or product categories. 
* Discount-level analysis revealed that larger discounts did not meaningfully increase sales volume. Average quantity per transaction remained stable across all discount groups, indicating limited impact of discount size on customer purchasing behavior.
* Inventory issues were distributed similarly across all countries, indicating that stock management challenges were systemic rather than market-specific.
* A significant cross-market inventory imbalance was observed, driven by a high share of dead stock alongside substantial overstock and extreme overstock levels, indicating systemic inefficiencies in inventory allocation and replenishment planning.

### 6. Business Recommendations
* Focus on initiatives that support sales volume growth. Since revenue growth has been volume-driven, maintaining demand should remain a strategic priority.
* Align inventory planning and marketing activities with seasonal demand peaks in November and December.
* Continue investing in the Shoes and Women categories. These categories should remain a key focus for merchandising and marketing efforts.
* Reassess the current discount strategy, as larger discounts did not lead to meaningful increases in sales volume. Future promotions should focus on targeted campaigns rather than deeper discounts.
* Prioritize inventory optimization initiatives to reduce dead stock and excess inventory. Regular inventory reviews and demand-based replenishment planning could help improve stock turnover and reduce holding costs.
