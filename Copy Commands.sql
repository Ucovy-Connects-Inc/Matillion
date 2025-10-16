-- DIM CUSTOMER
COPY INTO dim_customer
FROM @~/auto_etl/dim_customer.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);

-- DIM PRODUCT
COPY INTO dim_product
FROM @~/auto_etl/dim_product.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);

-- DIM CAMPAIGN
COPY INTO dim_campaign
FROM @~/auto_etl/dim_campaign.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);

-- DIM DATE
COPY INTO dim_date
FROM @~/auto_etl/dim_date.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);

-- FACT TABLE
COPY INTO fact_campaign_performance
FROM @~/auto_etl/fact_campaign_performance.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);
