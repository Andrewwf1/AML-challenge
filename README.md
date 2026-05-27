# AML BigData Challenge 
This is a self-paced project for SQL learning and practicing. The data is from [IMI BIGDataAIHub](https://www.utm.utoronto.ca/bigdataaihub/events/2025-2026-imi-bigdataaihub-big-data-and-artificial-intelligence-competition), synthesized data from Scotiabank.  

## Process
I firstly import raw datasets into Microsoft Azure Database, and then use SQL Server Management Studio (SMSS) to process the csv files into SQL tables. After cleaning, I created an analysis table that contains kyc data and actual transaction records for explorative data analysis. In the EDA, I convert raw transaction number into several indicators such as income-transaction ratio, volatility, and high-value ratio. Then I used window function to compare every customer within their occupation group   
