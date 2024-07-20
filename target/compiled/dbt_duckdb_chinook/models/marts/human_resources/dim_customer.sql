

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

    FROM "chinook"."main"."stg_customer"
)

SELECT * FROM customer