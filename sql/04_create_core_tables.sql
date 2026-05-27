-- TABLE transactions: abm, card, cheque, eft, emt, westernunion, wire
CREATE TABLE core.transactions (
    source_system NVARCHAR(30),   
    transaction_id BIGINT,
    customer_id NVARCHAR(100),
    amount_cad DECIMAL(18,2),
    debit_credit NVARCHAR(10),
    transaction_datetime DATETIME2,
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100),
    merchant_category NVARCHAR(100),
    ecommerce_ind NVARCHAR(10),
    cash_indicator NVARCHAR(20),
    loaded_at DATETIME2 DEFAULT SYSUTCDATETIME()
);
GO

-- TABLE customers: kyc_individual, kyc_smallbusiness, 
--                  kyc_occupation_code, kyc_industry_code
CREATE TABLE core.customers (
    customer_type NVARCHAR(30),   
    customer_id NVARCHAR(100),
    country NVARCHAR(100),
    province NVARCHAR(100),
    city NVARCHAR(100),
    onboard_date NVARCHAR(100),
    loaded_at DATETIME2 DEFAULT SYSUTCDATETIME(),

    -- individual only
    gender NVARCHAR(100),
    marital_status NVARCHAR(100),
    occupation_code	NVARCHAR(100),
    income DECIMAL(18,2),
    birth_date DATE,
    
    -- smallbusiness only
    industry_code NVARCHAR(100),
    employee_count DECIMAL(18,2),
    sales DECIMAL(18,2),
    established_date DATE
);
GO

-- TABLE customer_labels
CREATE TABLE core.customer_labels(
    customer_id NVARCHAR(100),
    label INT,
    loaded_at DATETIME2 DEFAULT SYSUTCDATETIME()
);
GO


