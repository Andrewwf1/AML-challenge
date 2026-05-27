BULK INSERT raw.abm
FROM 'data/abm.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.card
FROM 'data/card.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.cheque
FROM 'data/cheque.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.eft
FROM 'data/eft.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.emt
FROM 'data/emt.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.kyc_individual
FROM 'data/kyc_individual.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.kyc_occupation_codes
FROM 'data/kyc_occupation_codes.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.kyc_industry_codes
FROM 'data/kyc_industry_codes.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.kyc_smallbusiness
FROM 'data/kyc_smallbusiness.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.labels
FROM 'data/labels.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.westernunion
FROM 'data/westernunion.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT raw.wire
FROM 'data/wire.csv'
WITH (
    DATA_SOURCE = 'aml_blob',
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIELDQUOTE = '"',
    TABLOCK
);
GO