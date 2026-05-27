
SELECT *
FROM raw.kyc_individual i 
LEFT JOIN raw.kyc_occupation_codes o
	ON i.occupation_code = o.occupation_code

SELECT *
FROM raw.kyc_smallbusiness i 
LEFT JOIN raw.kyc_industry_codes o
	ON i.industry_code = o.industry_code