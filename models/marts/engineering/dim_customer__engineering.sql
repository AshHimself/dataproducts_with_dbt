{{ config(materialized="table", alias = 'dim_customer_eng') }}

WITH customer AS (
    SELECT * FROM {{ ref("dim_customer") }}
)

SELECT * FROM customer
