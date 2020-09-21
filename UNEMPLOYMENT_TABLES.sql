

----------------------------------------
--- UNEMPLOYMENT TABLE
----------------------------------------

---DROP TABLES
DROP TABLE IF EXISTS UNEMPLOYMENT;

CREATE TABLE UNEMPLOYMENT (
	REC_ID 			VARCHAR (100)	, 	
	SEX 			VARCHAR (100)	,
	AGE_GROUP 		VARCHAR (100)	, 
	COUNT_PERCENT 	DECIMAL		 	, 
	REPORTING_DATE 	DATE			, 
	CATEGORY 		VARCHAR (100)
);

ALTER TABLE UNEMPLOYMENT
ADD PRIMARY KEY (REC_ID);

SELECT *
FROM UNEMPLOYMENT
;



--------------------
----- PANDEMIC DATA
--------------------


DROP TABLE IF EXISTS cases_count;
CREATE TABLE cases_count (
    sex VARCHAR   NOT NULL,
    date DATE   NOT NULL,
    cases_count INT   NOT NULL,
    category VARCHAR   NOT NULL
);


DROP TABLE IF EXISTS mortality_count;
CREATE TABLE mortality_count (
    sex VARCHAR   NOT NULL,
    date DATE   NOT NULL,
    mortality_count INT   NOT NULL,
    category VARCHAR   NOT NULL
);


DROP TABLE IF EXISTS recovered_count;
CREATE TABLE recovered_count (
    province VARCHAR   NOT NULL,
    date DATE   NOT NULL,
    cumulative_recovered INT  NOT NULL,
    category VARCHAR   NOT NULL
);


DROP TABLE IF EXISTS testing_count;
CREATE TABLE testing_count (
    province VARCHAR   NOT NULL,
    date DATE   NOT NULL,
    cumulative_testing INT   NOT NULL,
    category VARCHAR   NOT NULL
);




ALTER TABLE cases_count
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE mortality_count
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE recovered_count
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE testing_count
ADD COLUMN id SERIAL PRIMARY KEY;





SELECT * FROM cases_count;
SELECT * FROM mortality_count;
SELECT * FROM recovered_count;
SELECT * FROM testing_count;




-----------
SELECT *
FROM CASES_COUNT AS C
INNER JOIN UNEMPLOYMENT AS U
ON C.DATE = U.REPORTING_DATE
WHERE U.SEX <> 'Both sexes'
AND U.CATEGORY = 'Percentage'
;



