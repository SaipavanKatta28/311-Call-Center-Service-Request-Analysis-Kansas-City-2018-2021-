USE DAMG7370FALL24;
GO

SELECT COUNT(*) AS [RowCount]
FROM CallCenterServiceRequests;






select * from CallCenterServiceRequests

---1--------------
SELECT YEAR(Creation_Date) AS Request_Year, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
WHERE YEAR(Creation_Date) BETWEEN 2018 AND 2021
GROUP BY YEAR(Creation_Date)
ORDER BY Request_Year;


SELECT YEAR(Creation_Date) AS Request_Year, MONTH(Creation_Date) AS Request_Month, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
WHERE YEAR(Creation_Date) BETWEEN 2018 AND 2021
GROUP BY YEAR(Creation_Date), MONTH(Creation_Date)
ORDER BY Request_Year, Request_Month;


-------2------------

SELECT Source, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Source
ORDER BY Request_Count DESC;


-------3----------

SELECT Department, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Department
ORDER BY Request_Count DESC;


------4--------

SELECT TOP 10 Category1, Type, MIN(Days_to_Close) AS Fastest_Response_Time
FROM CallCenterServiceRequests
WHERE Days_to_Close IS NOT NULL
GROUP BY Category1, Type
ORDER BY Fastest_Response_Time ASC;


------5--------

SELECT TOP 10 Neighborhood, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Neighborhood
ORDER BY Request_Count DESC;


SELECT TOP 5 
    Zip_Code, 
    COUNT(Case_ID) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY  Zip_Code 
ORDER BY Request_Count DESC;

SELECT TOP 5 
    Street_Address, 
    COUNT(Case_ID) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Street_Address
ORDER BY Request_Count DESC;

SELECT TOP 5 
   Neighborhood, 
    COUNT(Case_ID) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Neighborhood 
ORDER BY Request_Count DESC;

SELECT TOP 5 
   Police_District, 
    COUNT(Case_ID) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Police_District
ORDER BY Request_Count DESC;


-----6------

SELECT Department, Work_Group, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
GROUP BY Department, Work_Group
ORDER BY Request_Count DESC;



-------7-------

SELECT Department, AVG(Days_to_Close) AS Avg_Response_Time
FROM CallCenterServiceRequests
WHERE Days_to_Close IS NOT NULL
GROUP BY Department
ORDER BY Avg_Response_Time;


------8-------

SELECT YEAR(Creation_Date) AS Request_Year, Status, COUNT(*) AS Request_Count
FROM CallCenterServiceRequests
WHERE YEAR(Creation_Date) BETWEEN 2018 AND 2021
GROUP BY YEAR(Creation_Date), Status
ORDER BY Request_Year;


-----9-----

SELECT Category1, AVG(Days_to_Close) AS Avg_Days_to_Close
FROM CallCenterServiceRequests
WHERE Days_to_Close IS NOT NULL
GROUP BY Category1
ORDER BY Avg_Days_to_Close DESC;


SELECT TOP 10 
    Category1, 
    AVG(Days_to_Close) AS AvgDaysToClose
FROM 
    CallCenterServiceRequests
WHERE 
    Days_to_Close IS NOT NULL
GROUP BY 
    Category1
ORDER BY 
    AvgDaysToClose DESC;




------10-------

SELECT Department, COUNT(*) AS Workload, AVG(Days_to_Close) AS Avg_Days_to_Close
FROM CallCenterServiceRequests
GROUP BY Department
ORDER BY Workload DESC;



