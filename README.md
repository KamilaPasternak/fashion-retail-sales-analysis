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

## 📊 Results
### How have the company’s revenues developed over time?
The chart below shows annual revenue from 2015 to 2024, along with year-over-year percentage growth.

<img width="1187" height="622" alt="image" src="https://github.com/user-attachments/assets/5013c3ae-fc43-47a0-9fbc-2f657f295483" />

The company recorded positive growth every year. The highest growth was observed in 2016, after which it stabilized at around 3–4%, declining to just 1% in 2023. In 2024, growth increased again to 5%.

### What is driving the company’s revenue growth: higher prices or increased sales volume?
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

### Sales Performance by Product Category
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

Orange bars represent total units sold, while the blue line shows average base price per subcategory.

