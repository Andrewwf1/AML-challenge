SELECT
    *,
    txn_count * 1.0 / NULLIF(active_days, 0) AS txn_per_active_day,
    total_amount * 1.0 / NULLIF(active_days, 0) AS amount_per_active_day,
    std_amount * 1.0 / NULLIF(avg_amount, 0) AS volatility_ratio,
    max_amount * 1.0 / NULLIF(avg_amount, 0) AS max_avg_ratio,
    max_amount * 1.0 / NULLIF(total_amount, 0) AS spike_ratio,
    high_value_txn_count * 1.0 / NULLIF(txn_count, 0) AS high_value_ratio,
    channel_count * 1.0 / NULLIF(txn_count, 0) AS channel_diversity_ratio,
    country_count * 1.0 / NULLIF(txn_count, 0) AS country_diversity_ratio,
    cash_txn_count * 1.0 / NULLIF(txn_count, 0) AS cash_ratio,
    wire_txn_count * 1.0 / NULLIF(txn_count, 0) AS wire_ratio,
    ABS(debit_count - credit_count) * 1.0 / NULLIF(txn_count, 0) AS flow_imbalance_ratio,
    credit_count * 1.0 / NULLIF(debit_count, 0) AS credit_debit_ratio,
    total_amount * 1.0 / NULLIF(income, 0) AS total_income_ratio,
    max_amount * 1.0 / NULLIF(income, 0) AS max_income_ratio,
    DATEDIFF(day, onboard_date, GETDATE()) AS account_age_days,
    txn_count * 1.0 / NULLIF(DATEDIFF(day, onboard_date, GETDATE()), 0) AS txn_per_account_day,
    total_amount * 1.0 / NULLIF(DATEDIFF(day, onboard_date, GETDATE()), 0) AS amount_per_account_day,
    DATEDIFF(year, birth_date, GETDATE()) AS customer_age

INTO mart.customer_aml_metrics
FROM mart.customer_transaction;

