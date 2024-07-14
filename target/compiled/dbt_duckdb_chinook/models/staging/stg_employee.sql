with source as (

    select * from "chinook"."main"."raw_employee"
),

renamed AS (
    SELECT
*
    FROM source
)

SELECT * FROM renamed