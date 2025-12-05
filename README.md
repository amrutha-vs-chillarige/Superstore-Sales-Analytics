# 📊 Superstore Sales Analytics — Power BI & SQL  
### Data Cleaning • Profitability Insights • Customer Segmentation (RFM) • Interactive Dashboard

![cover](assets/cover.png)

## 🚀 Project Overview  
This is an **end-to-end data analytics project** using **SQL + Power BI** to analyze sales, profit, and customer behavior using the Superstore dataset.  
It includes:

- SQL-based data cleaning  
- Profitability analysis  
- RFM segmentation  
- Trend analysis  
- Interactive Power BI dashboards  
- Business-ready insights  

---

## 📁 Project Structure

```
Superstore-Sales-Analytics/
│
├── data/                     # Cleaned & exported datasets
├── sql_queries/              # SQL scripts used for processing
├── powerbi_dashboard/        # PBIX + dashboard screenshots
├── assets/                   # Images/icons for documentation
└── README.md                 # Project documentation
```

---

## 🗄 SQL Analysis

### **1. Data Cleaning (`data_cleaning.sql`)**
- Removed duplicates  
- Fixed date formats  
- Cleaned negative/missing values  
- Created `superstore_cleaned_final`

### **2. Monthly Sales & Profit (`monthly_sales.sql`)**
- Month-wise sales trends  
- Used for line chart in dashboard  

### **3. Category & State Profitability**
- `state_sales.sql`: profit & sales by state  
- `top_products.sql`: top 10 most profitable products  

### **4. RFM Segmentation (`rfm_segmentation.sql`)**
- Recency = days since last purchase  
- Frequency = number of orders  
- Monetary = total spend  
- RFM score → customer segment (Champions, Loyal, Regular, At-Risk)

---

## 📊 Power BI Dashboard  
The final dashboard contains **four professional pages**:

### **📍 1. Executive Overview**
- Total Sales, Profit, Customers, Avg Monetary  
- Sales by State (donut chart)  
- Sales vs Profit combo chart  

### **📍 2. Sales & Profit Trends**
- Monthly Sales Trend (2014–2017)  
- Monthly Profit Margin (%)  
- Seasonal + volatility insights  

### **📍 3. Product Performance**
- Top 10 profitable products  
- Profit by Category  
- Sales by Sub-Category  
- Product insights  

### **📍 4. Customer Segmentation (RFM)**
- Customer segment distribution  
- RFM scatter plot  
- Avg Recency, Frequency, Monetary, RFM score  
- Insights on customer behavior & churn  

---

## 💡 Key Business Insights

### **Sales & Profit**
- Seasonal spikes in November–December  
- Profit does not always follow sales → discount issues  
- Overall sales trend grows year-on-year  

### **Product Performance**
- Top products contribute most profit (Pareto effect)  
- Technology dominates profits  
- Several small categories show high margins → promotion opportunities  

### **Customer Insights**
- Regular + Loyal form bulk of the base  
- Champions spend significantly more per order  
- At-Risk customers show declining activity  
- High frequency = high monetary value (strong RFM correlation)  

---

## 🛠 Tools Used
- **SQL (MySQL Workbench)** — cleaning, RFM, aggregations  
- **Power BI** — dashboarding & visual analysis  
- **Excel** — quick data validation  
- **GitHub** — version control & documentation  

---

## 🧑‍💻 Author  
**Amrutha Venkata Sai Chillarige**  
Data Analyst | Power BI | SQL | Python  
🔗 LinkedIn: *add your link*

---

## ⭐ If you found this useful, consider giving the repo a star!
