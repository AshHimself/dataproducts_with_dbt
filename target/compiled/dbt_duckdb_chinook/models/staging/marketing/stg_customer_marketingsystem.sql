with source as (

    select * from "chinook"."main"."raw_customer_marketingsystem"
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