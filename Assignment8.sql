CREATE DATABASE HealthCare;
USE HealthCare
CREATE TABLE office			(office_name varchar(50) primary key, 
							 address varchar(50) NOT NULL);

CREATE TABLE employee		(emp_no int primary key,
							 emp_fname varchar(50) NOT NULL,
							 emp_lname varchar(50) NOT NULL,
							 job_title varchar(50) NULL);

CREATE TABLE family			(family_name varchar(50) primary key,
							 address varchar(50) NOT NULL,
							 phone_no int NOT NULL,
							 email varchar(50) NULL);

CREATE TABLE patient		(patient_no int primary key,
							 patient_fname varchar(50) NOT NULL,
							 patient_lname varchar(50) NOT NULL,
							 phone_no int NOT NULL,
							 email varchar(50) NULL,
							 family_name varchar(50) foreign key references family);

CREATE TABLE appointment	(appt_id int primary key,
							 office_name varchar(50) foreign key references office,
							 emp_no int foreign key references employee,
							 patient_no int foreign key references patient,
							 date varchar(10) NOT NULL);

CREATE TABLE supplies		(emp_no int primary key,
							 samp_toothpastes int NOT NULL,
							 toothbrushes int NOT NULL,
							 floss int NOT NULL,
							 dental_supplies int NOT NULL);

CREATE TABLE documentation	(appt_id int primary key,
							 patient_no int foreign key references patient,
							 insurance varchar(5) NOT NULL,
							 visit_summary varchar(500) NOT NULL);

