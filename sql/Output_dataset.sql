SELECT 
	customer_id,
	customer_id,
    txn_count,
    total_amount,
    avg_amount,
    std_amount,
    max_amount,
    active_days,
    channel_count,
    country_count,
    cash_txn_count,
    wire_txn_count,
    high_value_txn_count,
    debit_count,
    credit_count,
    fraud_label
FROM mart.customer_transaction
WHERE fraud_label is not null