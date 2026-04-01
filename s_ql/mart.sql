CREATE SCHEMA IF NOT EXISTS mart;

CREATE OR REPLACE VIEW mart.final_dataset AS
SELECT
    *,
    CASE
        WHEN twf = 1 THEN 'Tool Wear Failure'
        WHEN hdf = 1 THEN 'Heat Dissipation Failure'
        WHEN pwf = 1 THEN 'Power Failure'
        WHEN osf = 1 THEN 'Overstrain Failure'
        WHEN rnf = 1 THEN 'Random Failure'
        WHEN machine_failure = 0 THEN 'No Failure'
        ELSE 'Unknown'
    END AS failure_type
FROM staging.ai4i_2020_clean;