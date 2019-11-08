-- Database: ETL_project

-- DROP DATABASE "ETL_project";

CREATE DATABASE "ETL_project"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- CREATE TABLES FOR 3 FILES

DROP TABLE IF EXISTS ww_computer_software_companies;
DROP TABLE IF EXISTS ww_it_services_companies;
DROP TABLE IF EXISTS ww_internet_companies;

CREATE TABLE ww_computer_software_companies (
	company_name TEXT,
	company_url TEXT,
	year_founded TEXT,
	industry TEXT,
	company_size TEXT,
	locality TEXT,
	country TEXT,
	linkedin_url TEXT,
	current_employee_estimate TEXT,
	total_employee_estimate TEXT
);

SELECT * FROM ww_computer_software_companies;

CREATE TABLE ww_it_services_companies (
	company_name TEXT,
	company_url TEXT,
	year_founded TEXT,
	industry TEXT,
	company_size TEXT,
	locality TEXT,
	country TEXT,
	linkedin_url TEXT,
	current_employee_estimate TEXT,
	total_employee_estimate TEXT
);

SELECT * FROM ww_it_services_companies;

CREATE TABLE ww_internet_companies (
	company_name TEXT,
	company_url TEXT,
	year_founded TEXT,
	industry TEXT,
	company_size TEXT,
	locality TEXT,
	country TEXT,
	linkedin_url TEXT,
	current_employee_estimate TEXT,
	total_employee_estimate TEXT
);

SELECT * FROM ww_internet_companies;

-- Create a new table with the data from the 3 tables
DROP TABLE IF EXISTS all_companies;

CREATE TABLE all_companies
AS
  SELECT * FROM ww_computer_software_companies
    UNION ALL
  SELECT * FROM ww_it_services_companies
    UNION ALL
  SELECT * FROM ww_internet_companies;   
  
SELECT * FROM all_companies;
