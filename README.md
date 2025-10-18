**🏥 MediAnalytics — Healthcare Appointment Analysis (Excel + SQL)**
**📘 Project Overview**

MediAnalytics is a comprehensive healthcare data analysis project that explores hospital appointment patterns, patient demographics, and no-show behavior.
The project combines Excel (for data cleaning and preprocessing) with SQL Workbench (for deep analytical querying).

The main objective is to uncover insights about patient attendance trends, disease patterns, and factors affecting missed appointments using real-world data from Kaggle.

**⚙️ Tools & Technologies Used**

🧾 Microsoft Excel → for data cleaning, transformation, and feature creation

🗄️ MySQL Workbench → for structured query analysis and insight generation

📊 Kaggle Dataset → real-world healthcare appointment data source

**🧹 Data Preparation**

Downloaded the healthcare dataset from Kaggle.

Cleaned and standardized data in Excel:


Standardized column names and formats (Date, Time, Text).

Added new analytical columns:

Age_Category

Scheduled_year, Scheduled_month_name, Scheduled_dayname

Appointment_year, Appointment_Quarter

Sche_Appo_daydiff — difference between scheduled and appointment dates.

Imported the cleaned dataset into MySQL Workbench for SQL analysis.

**🧮 Project Structure**
**🩺 1️⃣ Basic SQL Queries (1–15)**

Retrieve all records and distinct values

Count total appointments and patients

Analyze demographics (Age, Gender, Scholarship, SMS)

**💉 2️⃣ Intermediate Analytical Queries (16–30)**

No-show rates by gender and weekday

Correlation between SMS reminders and attendance

Scheduling gap analysis (Sche_Appo_daydiff)

**🧠 3️⃣ Advanced / Insight Queries (31–45)**

Rank months based on missed appointments

Identify most punctual vs least punctual patients

Calculate no-show rates by Age_Category and Gender

**🧠 Key Insights**

💬 SMS reminders reduce no-shows — patients who received reminders were more likely to attend.

👵 Older patients (Age > 50) had slightly higher no-show rates than younger ones.

🩸 Diabetes and Hypertension were the most common coexisting health conditions.

📅 Mid-week appointments (Tuesday–Thursday) had the highest attendance.

🕒 Long scheduling gaps often led to higher no-show probabilities.

**📊 Example Analytical Themes**

Attendance Behavior: How SMS, scholarship, and age affect attendance.

Time-Based Trends: Appointment distribution across days, months, and quarters.

Chronic Disease Patterns: Relationship between Diabetes, Hypertension, and No_show.

Patient Engagement: Identifying frequent or absent patients through ID analysis.

**🧾 Conclusion**

MediAnalytics demonstrates how Excel and SQL can be combined for efficient data cleaning, processing, and analytics.
It reveals actionable insights into patient behavior, helping healthcare institutions improve appointment scheduling and patient engagement.
