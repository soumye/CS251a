.headers ON
.mode column
.explain ON

ATTACH 'DATABASE.DB' AS 'IITK';
PRAGMA FOREIGN_KEYS = ON;

CREATE TABLE NON_STUDENTS (
		ID INT PRIMARY KEY NOT NULL,
		NAME VARCHAR NOT NULL,
		ROLE VARCHAR NOT NULL,
		ADDRESS VARCHAR NOT NULL,
		PHONE INT,
		DEPT VARCHAR NOT NULL
	);

CREATE TABLE STUDENTS (
		ROLL INT PRIMARY KEY NOT NULL,
		NAME VARCHAR NOT NULL,
		GENDER CHAR(1) NOT NULL,
		MARRIED VARCHAR NOT NULL,
		HALL INT NOT NULL,
		PHONE INT,
		DEPT VARCHAR NOT NULL,
		UG_PG CHAR(2) NOT NULL,
		DEPT_ADVISOR INT,
		ADVISOR2 INT,
		FOREIGN KEY ('DEPT_ADVISOR') REFERENCES NON_STUDENTS('ID'),
		FOREIGN KEY ('ADVISOR2') REFERENCES NON_STUDENTS('ID'),
		CHECK(((UG_PG IS 'PG') AND (DEPT_ADVISOR IS NOT NULL)) OR (UG_PG IS 'UG')),
		CHECK(((MARRIED IS 'YES') AND (HALL IS 11)) OR (MARRIED IS 'NO') OR (GENDER IS 'F')),
		CHECK(((GENDER IS 'F') AND (HALL IS 6)) OR (GENDER IS 'M'))
	);

CREATE TABLE FAMILY_STUDENTS (
		MEMBER VARCHAR NOT NULL,
		CORE INT NOT NULL,
		RELATION VARCHAR NOT NULL,
		FOREIGN KEY ('CORE') REFERENCES STUDENTS('ROLL')
	);

CREATE TABLE FAMILY_NON_STUDENTS (
		MEMBER VARCHAR NOT NULL,
		CORE INT NOT NULL,
		RELATION VARCHAR NOT NULL,
		FOREIGN KEY ('CORE') REFERENCES NON_STUDENTS('ID')
	);

CREATE TABLE DEPARTMENTS (
		DEPARTMENT VARCHAR NOT NULL,
		HEAD INT NOT NULL,
		FOREIGN KEY ('HEAD') REFERENCES NON_STUDENTS('ID')
	);