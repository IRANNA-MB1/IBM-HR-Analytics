--IBM HR Analytics Employee Attrition & Performance--

use [SQL Portfolio Projects];

--1. What is the total number of employees in the company?
SELECT COUNT(*) AS total_employees
FROM IBM_HR_Analytics;

--2. What is the average age of employees?
SELECT AVG(Age) AS average_age
FROM IBM_HR_Analytics;

--3. What is the proportion of male and female employees in the company?
SELECT Gender, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY Gender;

--4. What is the proportion of employees in each department?
SELECT Department, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY Department;

--5. What is the average monthly income of employees who left the company compared to those who stayed?
SELECT Attrition, AVG(MonthlyIncome) AS avg_monthly_income
FROM IBM_HR_Analytics
GROUP BY Attrition;

--6. What is the average number of years employees have spent in the company?
SELECT AVG(YearsAtCompany) AS average_years
FROM IBM_HR_Analytics;

--7. What is the proportion of employees who have been promoted in the last 5 years?
SELECT COUNT(*) AS promoted, (SELECT COUNT(*) FROM IBM_HR_Analytics) - COUNT(*) AS not_promoted
FROM IBM_HR_Analytics
WHERE YearsSinceLastPromotion <= 5;

--8. What is the proportion of employees in each job role?
SELECT JobRole, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY JobRole;

--9. What is the proportion of employees who are married, single, and divorced?
SELECT MaritalStatus, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY MaritalStatus;

--10. What is the average satisfaction level of employees who left the company compared to those who stayed?
SELECT Attrition, AVG(JobSatisfaction) AS avg_satisfaction
FROM IBM_HR_Analytics
GROUP BY Attrition;

--11. What is the average daily rate for each department?
SELECT Department, AVG(DailyRate) AS avg_daily_rate
FROM IBM_HR_Analytics
GROUP BY Department;

--12. What is the proportion of employees who have a distance from home less than or greater than 10 miles?
SELECT CASE WHEN DistanceFromHome <= 10 THEN 'Less than or equal to 10 miles'
            ELSE 'Greater than 10 miles' END AS distance, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY CASE WHEN DistanceFromHome <= 10 THEN 'Less than or equal to 10 miles'
            ELSE 'Greater than 10 miles' END

--13. What is the average number of training hours per year for each department?
SELECT Department, AVG(TrainingTimesLastYear) AS avg_training_hours
FROM IBM_HR_Analytics
GROUP BY Department;

--14. What is the distribution of education fields among employees?
SELECT EducationField, COUNT(*) AS count
FROM IBM_HR_Analytics
GROUP BY EducationField;

--15. What is the average number of hours worked per day for each department?
SELECT Department, AVG(HourlyRate) AS avg_daily_hours
FROM IBM_HR_Analytics
GROUP BY Department;

--16. What is the average number of years since the last promotion for each job role?
SELECT JobRole, AVG(YearsSinceLastPromotion) AS avg_years_last_promotion
FROM IBM_HR_Analytics
GROUP BY JobRole;

--17. What is the proportion of employees who have had a performance rating of 3 or above?
SELECT COUNT(*) AS good_performance, (SELECT COUNT(*) FROM IBM_HR_Analytics) - COUNT(*) AS poor_performance
FROM IBM_HR_Analytics
WHERE PerformanceRating >= 3;

--18. What is the average number of years employees have spent in each job role?
SELECT JobRole, AVG(YearsInCurrentRole) AS avg_years_in_role
FROM IBM_HR_Analytics
GROUP BY JobRole;


