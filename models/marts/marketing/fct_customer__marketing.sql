{{ config(materialized="table", alias = 'fct_customer') }}

WITH customer AS (
    SELECT

        hr.customer_id,            --HR owned data
        hr.first_name,             --HR owned data
        hr.last_name,              --HR owned data
        ltv,                    -- MARKETING owned data
        propensity_to_leave,    -- MARKETING owned data
        customer_segment,       -- MARKETING owned data
        engagement_score        -- MARKETING owned data


    FROM {{ ref("dim_customer") }} AS hr
    INNER JOIN
        {{ ref("stg_customer_marketingsystem") }} AS marketing
        ON hr.customer_id = marketing.customer_id
)

SELECT * FROM customer
