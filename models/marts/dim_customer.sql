{{ config(materialized="table") }}

WITH customer AS (
    SELECT * FROM {{ ref("stg_customer") }}
)

SELECT * FROM customer
