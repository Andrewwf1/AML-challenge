SELECT
	fraud_label,
	COUNT(*) AS customer_count,
	AVG(txn_count) AS avg_txn_count,
	AVG(total_amount) AS avg_total_amount,
	AVG(avg_amount) AS avg_avg_amount,
	AVG(std_amount) AS avg_std,
	AVG(max_amount) AS avg_max_amount,
	AVG(active_days) AS avg_active_days,
	AVG(channel_count) AS avg_channel_count,
	AVG(country_count) AS avg_country_count,
	AVG(cash_txn_count) AS avg_cash_txn_count,
	AVG(wire_txn_count) AS avg_wire_txn_count,
	AVG(high_value_txn_count) AS avg_high_value_txn_count,
	AVG(debit_count) AS avg_debit,
	AVG(credit_count) AS avg_credit
FROM mart.customer_transaction
GROUP BY fraud_label;
