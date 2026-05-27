SELECT
    t.customer_id,
    COUNT(*) AS txn_count,
    SUM(t.amount_cad) AS total_amount,
    AVG(t.amount_cad) AS avg_amount,
    STDEV(t.amount_cad) AS std_amount,
    MAX(t.amount_cad) AS max_amount,
    COUNT(DISTINCT CAST(t.transaction_datetime AS DATE)) AS active_days,
    COUNT(DISTINCT t.source_system) AS channel_count,
    COUNT(DISTINCT t.country) AS country_count,
    SUM(CASE WHEN t.cash_indicator IS NOT NULL THEN 1 ELSE 0 END) AS cash_txn_count,
    SUM(CASE WHEN t.source_system = 'wire' THEN 1 ELSE 0 END) AS wire_txn_count,
    SUM(CASE WHEN t.amount_cad >= 10000 THEN 1 ELSE 0 END) AS high_value_txn_count,
    SUM(CASE WHEN t.debit_credit = 'D' THEN 1 ELSE 0 END) AS debit_count,
    SUM(CASE WHEN t.debit_credit = 'C' THEN 1 ELSE 0 END) AS credit_count,

    MAX(l.label) AS fraud_label,

    MAX(c.customer_type) AS customer_type,
    MAX(c.country) AS kyc_country,
    MAX(c.province) AS province,
    MAX(c.city) AS city,
    MAX(c.onboard_date) AS onboard_date,
    MAX(c.gender) AS gender,
    MAX(c.marital_status) AS marital_status,
    MAX(c.occupation_code) AS occupation_code,
    MAX(c.income) AS income,
    MAX(c.birth_date) AS birth_date,
    MAX(c.industry_code) AS industry_code, 
    MAX(c.employee_count) AS employee_count,
    MAX(c.sales) AS sales,
    MAX(c.established_date) AS established_date

INTO mart.customer_transaction
FROM core.transactions t

LEFT JOIN core.customer_labels l
    ON t.customer_id = l.customer_id

LEFT JOIN core.customers c
    ON t.customer_id = c.customer_id

GROUP BY t.customer_id;


