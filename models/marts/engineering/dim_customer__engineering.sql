{{ config(materialized="table", alias = 'dim_customer') }}

WITH customer AS (
    SELECT * FROM {{ ref("dim_customer") }}
)

SELECT * FROM customer
