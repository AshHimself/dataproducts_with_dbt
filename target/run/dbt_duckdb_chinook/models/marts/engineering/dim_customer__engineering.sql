
  
    
    

    create  table
      "chinook"."main_engineering"."dim_customer__dbt_tmp"
  
    as (
      

WITH customer AS (
    SELECT * FROM "chinook"."main_human_resources"."dim_customer"
)

SELECT * FROM customer
    );
  
  