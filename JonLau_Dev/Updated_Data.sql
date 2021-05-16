-- Table: public.Updated_Data_Week

-- DROP TABLE public."Updated_Data_Week";

CREATE TABLE public."Updated_Data_Week"
(
    week_ending date NOT NULL,
    age_group character varying COLLATE pg_catalog."default",
    covid_deaths integer
);


ALTER TABLE public."Updated_Data_Week"
    OWNER to postgres;

-- Table: public.CleanVaxdb

-- DROP TABLE public."CleanVaxdb";

CREATE TABLE public."CleanVaxdb"
(
    "Week of Dist" date NOT NULL,
    "Vax Dist" bigint NOT NULL
);

ALTER TABLE public."CleanVaxdb"
    OWNER to postgres;