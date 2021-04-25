-- Creating two tables for final project, bringing in clean data from "cleaning data" file
CREATE TABLE weekly_deaths (
	Week as DATE,
	HHS_Region as VARCHAR NOT NULL,
	Race as VARCHAR NOT NULL,
	COVID_Deaths as INT
);

CREATE TABLE vaccine_distro (
	Week as DATE,
	HHS_Region as VARCHAR NOT NULL,
	First_Dose_Allocations as INT,
	Second_Dose_Allocations as INT
);

--merge the tables together into the datasets needed for my analysis
-- first table is data for HHS1 only
SELECT w.Week,
	w.Race
	w.COVID_Deaths,
	v.First_Dose_Allocations,
	v.Second_Dose_Allocations
INTO HHS1
FROM weekly_deaths as w
INNER JOIN vaccine_distro as v
ON (w.Week=v.Week)
WHERE (v.HHS_Region IS 1)
ORDER BY w.Week;

--will create tables for other analysis as needed