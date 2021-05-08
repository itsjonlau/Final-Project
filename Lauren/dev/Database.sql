CREATE TABLE deaths (
	Week DATE NOT NULL,
	AI_AN_NH FLOAT NOT NULL,
	Asian_PI_NH FLOAT NOT NULL,
	Black_NH FLOAT NOT NULL,
	Hispanic FLOAT NOT NULL,
	White_NH FLOAT NOT NULL,
	Total FLOAT NOT NULL
);

CREATE TABLE vaccine_distro (
	Week DATE NOT NULL,
	Vaccinations FLOAT NOT NULL
);

--merge the tables together into the dataset needed for my analysis
SELECT d.Week,
	d.AI_AN_NH,
	d.Asian_PI_NH,
	d.Black_NH,
	d.Hispanic,
	d.White_NH,
	d.Total,
	v.Vaccinations
INTO Total_Data
FROM deaths as d
INNER JOIN vaccine_distro as v
ON (d.Week=v.Week)
ORDER BY d.Week;