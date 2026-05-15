# Fashion retail sales analysis - [SQL + Excel]
### 🎯 The goal of the project was to analyze data in terms of sales, prices, seasonality and inventory levels.
---
## 🗂️ Data & Methodology
Data source: 

This project uses synthetic data generated with ChatGPT for analytical and educational purposes.

Steps:
1. Data quality testing.
2. Data cleansing (removing duplicates, standardizing dates, unifying values).
3. Preparing data for analysis using MySQL.
4. Results visualization and calculation in Excel.
---
## 📊 Results
### 1. How have the company’s revenues developed over time?
The chart below shows annual revenue from 2015 to 2024, along with year-over-year percentage growth.

<img width="1187" height="622" alt="image" src="https://github.com/user-attachments/assets/5013c3ae-fc43-47a0-9fbc-2f657f295483" />

The company recorded positive growth every year. The highest growth was observed in 2016, after which it stabilized at around 3–4%, declining to just 1% in 2023. In 2024, growth increased again to 5%.

### 2. What is driving the company’s revenue growth: higher prices or increased sales volume?
To analyze what actually drove the growth, I compared the total annual sales volume with the average annual selling price. 

<img width="1014" height="572" alt="image" src="https://github.com/user-attachments/assets/106a555a-c354-4bff-96a2-c205a9da9b5e" />

From the chart, it can be concluded that the highest revenue growth in 2016 resulted from a combination of increases in both factors. In contrast, the weaker performance in 2023 was mainly driven by a decline in sales volume.

### 3. Is there any seasonality in sales?
Seasonality in sales was evaluated by analyzing average monthly revenue across multiple years to identify recurring patterns in customer demand.

<img width="1408" height="676" alt="image" src="https://github.com/user-attachments/assets/4b58bd5f-938c-41b8-b48e-40d394a3532a" />

What it shows: 
* long-term growth,
* declines,
* repeated peaks. 

To assess seasonality, I aggregated revenue by month and calculated monthly averages.

<img width="1057" height="599" alt="image" src="https://github.com/user-attachments/assets/89458f54-1d75-44a4-a470-c89a6f0ee0dd" />

This highlights distinct recurring peaks, confirming a strong seasonal pattern in the dataset.

The analysis revealed a clear seasonal pattern, with revenue peaking in November and December, likely driven by holiday shopping demand.
