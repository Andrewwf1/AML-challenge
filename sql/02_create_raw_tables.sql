CREATE TABLE raw.abm (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100),
    cash_indicator NVARCHAR(20),
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100)
);
GO

CREATE TABLE raw.card (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100),
    merchant_category NVARCHAR(20),
    ecommerce_ind NVARCHAR(10),
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100)
);
GO

CREATE TABLE raw.cheque (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100)
);
GO

CREATE TABLE raw.eft (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100)
);
GO

CREATE TABLE raw.emt (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100)
);
GO

CREATE TABLE raw.kyc_individual (
    customer_id NVARCHAR(100),
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100),
    gender NVARCHAR(100),
    marital_status NVARCHAR(100),
    occupation_code	NVARCHAR(100),
    income NVARCHAR(20),
    birth_date NVARCHAR(100),
    onboard_date NVARCHAR(100)
);
GO

CREATE TABLE raw.kyc_occupation_codes (
    occupation_code NVARCHAR(100),
    occupation_title NVARCHAR(200)
);
GO

CREATE TABLE raw.kyc_industry_codes (
    industry_code NVARCHAR(100),
    industry NVARCHAR(200)
);
GO

CREATE TABLE raw.kyc_smallbusiness (
    customer_id NVARCHAR(100),
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100),
    industry_code NVARCHAR(100),
    employee_count NVARCHAR(100),
    sales NVARCHAR(100),
    established_date NVARCHAR(100),
    onboard_date NVARCHAR(100)
);
GO

CREATE TABLE raw.labels (
    customer_id NVARCHAR(100),
    label NVARCHAR(10)
);
GO

CREATE TABLE raw.westernunion (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100)
);
GO

CREATE TABLE raw.wire (
    transaction_id NVARCHAR(100),
    customer_id NVARCHAR(100),
    amount_cad NVARCHAR(100),
    debit_credit NVARCHAR(20),
    transaction_datetime NVARCHAR(100)
);
GO