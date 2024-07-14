
  
    
    

    create  table
      "chinook"."main"."dim_customer__dbt_tmp"
  
    as (
      

WITH customer AS (
    SELECT * FROM "chinook"."main"."stg_customer"
)

SELECT * FROM customer
    );
  
  