

Bank Loan Analysis - Dashboard

Dashboard Link: https://app.powerbi.com/view?r=eyJrIjoiNmVjYzJjMDktYjkzZS00ZmUyLWFhYjAtZTA5ZjcyNmExNDdhIiwidCI6IjcwMzY2YzAyLTkwOTUtNDMwOS04MDFhLTQ1MzUyOTUwYzg0MiJ9


Problem Statement
This dashboard helps the bank understand its customers better. It provides insights into customer satisfaction with the bank’s loan services. Through various analyses, the bank can identify areas for improvement and enhance its services. The dashboard also highlights key metrics such as the total loan amount, total loan applications, and total funded amount.

Since the number of unverified customers is increasing, the bank must focus on improving its services to address this issue.

Steps Followed
1)Load Data
Imported the dataset (CSV file) into Power BI Desktop.
Data Cleaning

Performed data cleaning in Power Query Editor, including removing blank values and handling duplicate entries.
Report View & KPIs

Created Key Performance Indicators (KPIs) and visualizations:

KPI 1: Year-wise Loan Amount Statistics
Visualization: Bar Chart
X-axis: Year, Y-axis: Loan Amount
Insight: The loan amount is increasing at a good rate. If the bank focuses on acquiring more customers every year, growth can accelerate further.

KPI 2: Grade and Sub-grade-wise Revolving Balance
Visualization: Stacked Column Chart
X-axis: Grade and Sub-grade, Y-axis: Revolving Balance, Legend: Grade

KPI 3: Total Payment for Verified and Non-verified Customers
Visualization: Multi-row Card

KPI 4: State-wise and Month-wise Loan Status
Visualization: Matrix
Rows: Loan Issue Date (Month and State), Columns: Loan Status

KPI 5: Home Ownership vs. Last Payment Date
Visualization: Stacked Column Chart
X-axis: Home Ownership and Year (Last Payment Date), Y-axis: Count of Last Payment Dates
DAX Calculations

Created several cards using DAX functions:
1)Total Loan Applications:
COUNT(finance_1[loan_amnt])
Counted entries in the loan_amnt column of the finance_1 table.

2)Total Loan Amount:
SUM(finance_1[loan_amnt])
Calculated the total of all entries in the loan_amnt column of the finance_1 table.

3)Average Interest Rate:
AVERAGE(finance_1[int_rate])
Computed the average of all entries in the int_rate column of the finance_1 table.

4)Total Funded Amount:
SUM(finance_1[funded_amnt])
Summed up all entries in the funded_amnt column of the finance_1 table.

5)Average DTI (Debt-to-Income):
AVERAGE(finance_1[dti]) / 100
Calculated the average of all entries in the dti column of the finance_1 table, divided by 100.


Filters and Slicers
Added slicers for better data filtering:
Year
Address State
Grade
Loan Status


Insights
Loan Amount Growth
The loan amount is increasing in a good rate,if bank focus on increasing number of customers every year, then it will grow more rapidly.


Revolving Balance by Grade
Grade ‘B’ has the highest revolving balance and should be prioritized for analysis.


Non-verified Customers
The number of non-verified customers is increasing annually. This trend requires immediate attention to ensure service quality.


Loan Applications by Month
The months from January to April have the lowest loan applications. Marketing efforts can be intensified during this period to improve loan openings.


Home Ownership Type
Customers with "Own Home" ownership type receive the least loans. This area needs investigation to understand the underlying causes.
