Create Table Updated_Data_Week_TotalDTHS(
	End_Week DATE NOT NULL,
	Age_Groups VARCHAR(12) NOT NULL,
	Total_Deaths INT
);

COPY Updated_Data_Week_TotalDTHS(End_Week, Age_Groups, Total_Deaths)
From 'C:\Users\Jon Lau\Desktop\Class\Final-Project\Jonlau_Dev\Resources\Updated_Data_Week_TotalDTHS.csv'
DELIMITER ','
CSV HEADER;


Create Table Updated_Data_Week_CVDDTHS(
	End_Week DATE NOT NULL,
	Age_Groups VARCHAR(12) NOT NULL,
	CVD_Deaths INT
);
	
COPY Updated_Data_Week_CVDDTHS (End_Week, Age_Groups, CVD_Deaths)	
FROM 'C:\Users\Jon Lau\Desktop\Class\Final-Project\Jonlau_Dev\Resources\Updated_Data_Week_CVDDTHS.csv'	
DELIMITER ','
CSV HEADER;

Create Table Death_Rate(
	End_Week DATE NOT NULL,
	Age_Groups VARCHAR(12) NOT NULL,
	Death_Rate FLOAT NOT NULL
);	
	
COPY Death_Rate (End_Week, Age_Groups, Death_Rate)	
FROM 'C:\Users\Jon Lau\Desktop\Class\Final-Project\Jonlau_Dev\Resources\Death_Rate.csv'	
DELIMITER ','
CSV HEADER;

CREATE TABLE CleanVaxdb(
	Week DATE NOT NULL,
	Distribution INT NOT NULL
);

COPY CleanVaxdb (Week, Distribution)	
FROM 'C:\Users\Jon Lau\Desktop\Class\Final-Project\Jonlau_Dev\Resources\CleanVaxdb.csv'	
DELIMITER ','
CSV HEADER;

SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Updated_Data_Week_TotalDTHS;
SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Updated_Data_Week_CVDDTHS;
SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Death_Rate;
SELECT * FROM public.CleanVaxdb;

Create Table Updated_Data_Week_TotalDTHS2 AS(SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Updated_Data_Week_TotalDTHS)
Create Table Updated_Data_Week_CVDDTHS2 AS(SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Updated_Data_Week_CVDDTHS)
Create Table Death_Rate2 AS(SELECT *,concat(END_WEEK, AGE_GROUPS) AS ID FROM public.Death_Rate)

SELECT * FROM public.Updated_Data_Week_TotalDTHS2

--merge the tables together
Select A.END_WEEK, A.AGE_GROUPS, A.CVD_DEATHS, B.Total_Deaths , C.Death_Rate ,D.Distribution
FROM public.Updated_Data_Week_CVDDTHS2 AS A INNER JOIN public.Updated_Data_Week_TotalDTHS2 AS B 
ON (A.ID = B.ID)
INNER JOIN public.Death_Rate2 AS C
ON (B.ID = C.ID)
LEFT JOIN public.CleanVaxdb AS D
ON (C.END_WEEK = D.WEEK)
ORDER BY D.WEEK;

DROP Table complete_table
--exporting table out
CREATE Table complete_table AS(
Select A.END_WEEK, A.AGE_GROUPS, A.CVD_DEATHS, B.Total_Deaths , C.Death_Rate ,D.Distribution
FROM public.Updated_Data_Week_CVDDTHS2 AS A INNER JOIN public.Updated_Data_Week_TotalDTHS2 AS B 
ON (A.ID = B.ID)
INNER JOIN public.Death_Rate2 AS C
ON (B.ID = C.ID)
LEFT JOIN public.CleanVaxdb AS D
ON (C.END_WEEK = D.WEEK)
ORDER BY D.WEEK
);

SELECT * FROM public.complete_table

COPY complete_table (End_Week, Age_Groups, CVD_DEATHS, Total_Deaths, Death_Rate, Distribution)	
TO 'C:\Users\Jon Lau\Desktop\Class\Final-Project\Jonlau_Dev\Resources\complete.table.csv'	
DELIMITER ','
CSV HEADER;