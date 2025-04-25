CREATE OR REPLACE EXTERNAL TABLE
  `${PROJECT_ID}.${DATASET_ID}`.bank_info ( 
	    uuid STRING,
	    account_number STRING,
	    age STRING,
	    Experience STRING,
	    Income STRING,
	    ZIP_Code STRING,
	    Family STRING,
	    education STRING,
	    Mortgage STRING,
	    Personal_Loan STRING,
	    Securities_Account STRING,
	    CD_Account STRING,
	    Online STRING,
	    Credit_Card STRING,
	    job STRING,
	    marital STRING,
	    housing STRING,
	    loan STRING,
	    contact STRING,
	    name STRING,
	    last_name STRING)

WITH CONNECTION `${CONNECTION_NAME}`
    OPTIONS(uris = ['gs://${DATA_BUCKET_NAME}/bank/*'],
		 max_staleness = INTERVAL 8 HOUR,
			metadata_cache_mode = 'AUTOMATIC',
				format = 'CSV')
