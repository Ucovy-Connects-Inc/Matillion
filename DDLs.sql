-- Dimension: Customer (SCD Type 2)
CREATE OR REPLACE TABLE dim_customer (
    customer_id INT,
    name STRING,
    email STRING,
    region STRING,
    start_date DATE,
    end_date DATE,
    is_current BOOLEAN
);

-- Dimension: Product (SCD Type 1)
CREATE OR REPLACE TABLE dim_product (
    product_id INT,
    product_name STRING,
    category STRING,
    price FLOAT
);

-- Dimension: Campaign
CREATE OR REPLACE TABLE dim_campaign (
    campaign_id INT,
    campaign_name STRING,
    product_id INT,
    channel STRING,
    start_date DATE,
    end_date DATE
);

-- Dimension: Date
CREATE OR REPLACE TABLE dim_date (
    date_key INT,
    date DATE,
    year INT,
    month INT,
    day INT,
    quarter STRING
);

-- Fact: Campaign Performance
CREATE OR REPLACE TABLE fact_campaign_performance (
    campaign_id INT,
    customer_id INT,
    date_key INT,
    impressions INT,
    clicks INT,
    spend FLOAT,
    conversions INT
);
