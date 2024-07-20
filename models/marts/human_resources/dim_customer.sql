{{ config(materialized="table") }}

WITH customer AS (
    SELECT
        customer_id,
        first_name,
        last_name,
        company,
        address,
        city,
        state,
        country,
        postal_code,
        phone,
        fax,
        email

    FROM {{ ref("stg_customer") }}
)

SELECT * FROM customer
