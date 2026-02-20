--Platform used: My Sql Workbench
--Dataset: Health Dataset
--Source: Kaggle

# 1-Retrieve all records from the dataset ?
select * 
from healthh;

# 2-Display distinct values from the Gender column ?
select distinct(Gender) 
from healthh;

# 3-Count the total number of appointments ?
select count(Appointment_Id) as total_count 
from healthh;

# 4-Find the total number of patients ?
select count(Patient_Id) as total_count 
from healthh;

# 5-Show the number of patients who received scholarships ?
select * 
from healthh 
where Scholarship = 1;

# 6-Count how many patients have diabetes ?
select count(*) as total_count 
from healthh where Diabetes = 1;

# 7-Find the average age of patients ?
select avg(age) as average_age 
from healthh;

# 8-Display the youngest and oldest patient ages ?
select min(age) as youngest, max(age) as oldest 
from healthh;

# 9-Retrieve all patients whose age is above 60 ?
select * 
from healthh 
where age > 60;

# 10-Show how many patients received SMS reminders ?
select * 
from healthh 
where SMS_received = 1;

# 11-List all appointments where No_show = 'Yes' ?
select * 
from healthh 
where No_show = 'Yes';

# 12-Count total appointments by gender ?
select Gender,count(*) as total_count 
from healthh 
group by 1;

# 13-Count total appointments per year ?
select Appointment_year,count(*) as total_appointments 
from healthh 
group by 1;

# 14-Find how many appointments were scheduled in each quarter ?
select Scheduled_Quarter,count(*) as scheduled_by_quarter 
from healthh 
group by 1;

# 15-Get the count of appointments made in each month (Appointment_month_name) ?
select Appointment_month_name,count(*) as appointments_by_months 
from healthh 
group by 1;

# 16-Find the number of missed appointments (No_show = 'Yes') by gender ?
select Gender,count(*) as total_count 
from healthh 
where No_show = 'Yes' 
group by 1;

# 17-Calculate the percentage of patients who missed their appointments ?
select sum((case when No_show = 'Yes' then 1 end)*100)/count(*) as percentage  
from healthh;

# 18-Count the number of appointments by day of the week ?
select Appointment_dayname,count(*) as total_appointments 
from healthh group by 1;

# 19-Show the average age of patients who missed their appointment vs those who didn’t ?
select No_show,avg(age) as missed 
from healthh group by 1;

# 20-Find which month had the highest number of missed appointments ?
select Appointment_month_name,count(*) as total_missed 
from healthh where No_show = 'Yes' 
group by 1 
order by total_missed desc 
limit 1;

# 21-Find the most common appointment day of the week ?
select Appointment_dayname,count(*) as most_common_day 
from healthh 
group by 1 
order by most_common_day desc 
limit 1;

# 22-Determine how many patients suffer from both Diabetes and Hypertension ?
select * 
from healthh 
where Diabetes = 1 and Hipertension = 1; 

# 23-Count how many patients have both Alcoholism and Handcap ?
select count(*) as total_count 
from healthh 
where Alcoholism = 1 and Handcap = 1;

# 24-Find the total number of patients who are both diabetic and did not show up ?
select count(*) as total_count 
from healthh 
where Diabetes = 1 and No_show ='Yes';

# 25-Calculate the average scheduled–appointment day difference for missed vs attended appointments ?
select No_show,avg(Sche_Appo_daydiff) as average_day_difference 
from healthh 
group by 1;

# 26-Get the number of appointments per quarter ?
select Appointment_Quarter,count(*) as appointment_by_quarter from healthh group by 1;

# 27-Identify the year with the highest number of total appointments ?
select Appointment_year,count(*) as total_appointments from healthh group by 1 order by total_appointments desc limit 1;

# 28-Find the average number of SMS reminders received per year ?
select Scheduled_year,round(avg(SMS_received),2) as average from healthh group by 1;

# 29-Show total appointments where Scholarship = 1 grouped by gender ?
select Gender,count(*) as total_count from healthh where Scholarship = 1 group by 1;

# 30-Count how many appointments were scheduled during weekends ?
select Scheduled_dayname,count(*) as total_appointments from healthh where Scheduled_dayname in ('Saturday','Sunday') group by 1;

# 31-Rank months based on the number of missed appointments ?
select Appointment_month_name,count(*) as missed,rank() over(order by count(*) desc) as rank_number from healthh where No_show = 'Yes' group by 1;

# 32-Find which gender has a higher no-show rate overall ?
select gender,count(*) as rate from healthh where No_show = 'No' group by 1 order by rate desc limit 1;

# 33-For each age category, calculate no-show percentage ?
select Age_Category,round((sum(case when No_show ='Yes' then 1 else 0 end)*100)/count(*),1) as no_show_percentage from healthh group by 1;

# 34-Determine whether older patients (Age > 50) miss appointments more often than younger ones ?
select Age_Category,count(*) as total_count from healthh where No_show = 'Yes' and Age_Category in ('Old','Young') group by 1;

# 35-Find the top 3 months with the highest average Sche_Appo_daydiff ?
select Scheduled_month_name,round(avg(Sche_Appo_daydiff),1) as average_difference from healthh group by 1 order by average_difference desc limit 3;

# 36-Find how many patients have multiple appointments (count per Patient_ID) ?
select Patient_Id,count(*) as total from healthh group by 1 having count(*) > 1;

# 37-Identify patients who missed all their scheduled appointments ?
select * from healthh where No_show = 'Yes';

# 38-Find the correlation between SMS_received and No_show (hint: use counts or ratios) ?
select SMS_received,round((sum(case when No_show = 'Yes' then 1 else 0 end)*100)/count(*),1) as corr from healthh group by 1;

# 39-Find the most common appointment day for diabetic patients ?
select Appointment_dayname,count(*) as total from healthh where Diabetes = 1 group by 1 order by total desc limit 1;

# 40-Determine whether patients with hypertension have a higher no-show rate ?
select No_show,count(*) as total from healthh where Hipertension = 1 group by 1 order by total desc;

# 41-Find the average age of patients with a scholarship who did not show up ?
select round(avg(Age),0) as average_age from healthh where Scholarship = 1 and No_show = 'No';

# 42-Display appointment counts grouped by both Gender and Appointment_Quarter ?
select Gender,Appointment_Quarter,count(*) as total_appointments from healthh group by 1,2;

# 43-Find how many appointments were scheduled on the same day ?
select count(*) as total_appointments from healthh where Sche_Appo_daydiff = 0;

# 44-Calculate the average appointment time per weekday (group by Appointment_dayname) ?
select Appointment_dayname,avg(Appointment_time) as average_appointment_time from healthh group by 1;

# 45-List top 5 patients with the largest scheduling gaps (Sche_Appo_daydiff highest) ?
select * from healthh order by Sche_Appo_daydiff desc limit 5;s
