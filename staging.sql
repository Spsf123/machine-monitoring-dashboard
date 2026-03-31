CREATE OR REPLACE VIEW staging.ai4i_2020_clean AS
SELECT
    udi::INT AS udi,
    product_id,
    type,
    air_temperature::NUMERIC AS air_temp,
    process_temperature::NUMERIC AS process_temp,
    rotational_speed::INT AS rpm,
    torque::NUMERIC,
    tool_wear::INT,
    machine_failure::INT,
    twf::INT,
    hdf::INT,
    pwf::INT,
    osf::INT,
    rnf::INT
FROM raw.ai4i_2020
WHERE udi ~ '^[0-9]+$';  