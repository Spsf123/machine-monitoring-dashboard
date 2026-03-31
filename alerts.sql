CREATE OR REPLACE VIEW mart.machine_alerts AS
SELECT
    *,
    CASE
        WHEN process_temp > 310 OR torque > 60 THEN 'Critical'
        WHEN tool_wear > 200 THEN 'High'
        ELSE 'Low'
    END AS risk_level
FROM mart.final_dataset;