-- abm
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'abm',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    country, 
    province, 
    city,
    NULL,
    NULL,
    cash_indicator
FROM raw.abm;

-- card
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'card',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    country, 
    province, 
    city,
    merchant_category,
    ecommerce_ind,
    NULL
FROM raw.card;

-- cheque
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'cheque',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.cheque;

-- eft
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'eft',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.eft;

-- emt
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'emt',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.emt;

-- westernunion
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'westernunion',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.westernunion;

-- wire
INSERT INTO core.transactions (
	source_system,   
    transaction_id,
    customer_id,
    amount_cad,
    debit_credit,
    transaction_datetime,
    country,
    province,
    city,
    merchant_category,
    ecommerce_ind,
    cash_indicator
)
SELECT 
    'wire',
    TRY_CAST(transaction_id AS BIGINT),
    customer_id,
    TRY_CAST(amount_cad AS DECIMAL(18,2)),
    debit_credit,
    TRY_CAST(transaction_datetime AS DATETIME2),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.wire;

-- kyc_individual
INSERT INTO core.customers (
	customer_type,   
    customer_id,
    country,
    province,
    city,
    onboard_date,
    -- individual only
    gender,
    marital_status,
    occupation_code,
    income,
    birth_date,
    -- smallbusiness only
    industry_code,
    employee_count,
    sales,
    established_date
)
SELECT 
    'individual',
    customer_id,
    country,
    province,
    city,
    TRY_CAST(onboard_date AS DATE),
    gender,
    marital_status,
    occupation_code,
    TRY_CAST(income AS DECIMAL(18,2)),
    TRY_CAST(birth_date AS DATE),
    NULL,
    NULL,
    NULL,
    NULL
FROM raw.kyc_individual;

-- kyc_smallbusiness
INSERT INTO core.customers (
	customer_type,   
    customer_id,
    country,
    province,
    city,
    onboard_date,
    -- individual only
    gender,
    marital_status,
    occupation_code,
    income,
    birth_date,
    -- smallbusiness only
    industry_code,
    employee_count,
    sales,
    established_date
)
SELECT 
    'smallbusiness',
    customer_id,
    country,
    province,
    city,
    TRY_CAST(onboard_date AS DATE),
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    industry_code,
    TRY_CAST(employee_count AS DECIMAL(18,2)),
    TRY_CAST(sales AS DECIMAL(18,2)),
    TRY_CAST(established_date AS DATE)
FROM raw.kyc_smallbusiness;

-- label
INSERT INTO core.customer_labels (
    customer_id,
    label
)
SELECT
    customer_id,
    TRY_CAST(label AS INT)
FROM raw.labels

