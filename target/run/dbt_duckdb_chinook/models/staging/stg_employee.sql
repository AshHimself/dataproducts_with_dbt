
  
  create view "chinook"."main"."stg_employee__dbt_tmp" as (
    with source as (

    select * from "chinook"."main"."raw_employee"
),

renamed AS (
    SELECT
*
    FROM source
)

SELECT * FROM renamed
  );
