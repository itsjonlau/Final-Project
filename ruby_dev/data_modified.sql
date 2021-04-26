CREATE TABLE data_modified (
	Record_ID VARCHAR PRIMARY KEY,
	Record_Year VARCHAR ,
	Record_Month VARCHAR ,
	Record_State VARCHAR ,
	Sex VARCHAR,
	Age_Group VARCHAR,
	Covid_Deaths INT,
	Total_Deaths INT,
	Pneumonia_Deaths INT,	
	Pneumonia_Covid_Deaths INT,
	Influenza_Deaths INT,
	Pneumonia_Influenza_Covid_Deaths INT
);

SELECT * FROM data_modified;