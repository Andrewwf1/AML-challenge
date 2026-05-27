SELECT 
    customer_id,
    fraud_label,
    province,
    city,
    marital_status,
    occupation_code,
    income,
    txn_per_active_day,
    amount_per_active_day,
    volatility_ratio,
    max_avg_ratio,
    spike_ratio,
    high_value_ratio,
    total_income_ratio,
    max_income_ratio,
    txn_per_account_day,
    amount_per_account_day,
    customer_age,
    (total_amount - AVG(total_amount) OVER (PARTITION BY occupation_code)) / 
    NULLIF(STDEV(total_amount) OVER (PARTITION BY occupation_code), 0) AS amount_zscore
FROM mart.customer_aml_metrics
WHERE
    occupation_code IN ('STUDENT', 'UNEMPLOYED', 'NULL')
    AND (
        total_income_ratio > 100
        OR max_income_ratio > 20
    )
    AND fraud_label IS NOT NULL
ORDER BY amount_zscore DESC