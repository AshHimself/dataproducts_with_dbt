with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}

    select * from {{ ref('raw_employee') }}
),

renamed AS (
    SELECT
*
    FROM source
)

SELECT * FROM renamed
