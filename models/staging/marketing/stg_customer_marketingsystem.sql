with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_customer_marketingsystem') }}
),

renamed as (
    select
        customer_id,
        first_name,
        last_name,
        ltv,
        propensity_to_leave,
        customer_segment,
        engagement_score

    from source
)

select * from renamed
