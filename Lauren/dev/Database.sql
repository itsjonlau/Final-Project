-- Creating two tables for final project, bringing in clean data from "cleaning data" file
CREATE TABLE deaths (
	Week DATE NOT NULL,
	HHS_Region VARCHAR(2) NOT NULL,
	Race VARCHAR(255) NOT NULL,
	COVID_Deaths INT NOT NULL
);

CREATE TABLE vaccine_distro (
	Week DATE NOT NULL,
	Vaccinations FLOAT NOT NULL
);

--merge the tables together into the dataset needed for my analysis
SELECT w.Week,
	w.Race,
	w.COVID_Deaths,
	v.Vaccinations
INTO Total_Data
FROM weekly_deaths as w
INNER JOIN vaccine_distro as v
ON (w.Week=v.Week)
ORDER BY w.Week;

--create another table with all total deaths by race and week
SELECT SUM(covid_deaths), race, week
INTO deaths_totals
FROM deaths
GROUP BY race, week
ORDER BY week

--create a table with total deaths by week
SELECT SUM(covid_deaths), week
INTO deaths_by_week
FROM deaths
GROUP BY week
ORDER BY week