-- Creating two tables for final project, bringing in clean data from "cleaning data" file
CREATE TABLE weekly_deaths (
	Week DATE NOT NULL,
	Race VARCHAR(255) NOT NULL,
	COVID_Deaths INT NOT NULL
);

CREATE TABLE vaccine_distro (
	Week DATE NOT NULL,
	Vaccines INT NOT NULL
);

--merge the tables together into the datasets needed for my analysis
-- first table is data for HHS1 only
SELECT w.Week,
	w.Race
	w.COVID_Deaths,
	v.Vaccines
INTO HHS1
FROM weekly_deaths as w
INNER JOIN vaccine_distro as v
ON (w.Week=v.Week)
ORDER BY w.Week;

--will create tables for each HHS region