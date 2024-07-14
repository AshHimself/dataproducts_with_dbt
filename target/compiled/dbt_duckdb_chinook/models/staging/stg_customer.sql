with source as (

    select * from "chinook"."main"."raw_customer"
),

renamed as (
    select
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
        email,
        support_rep_id

    from source
)

select * from renamed