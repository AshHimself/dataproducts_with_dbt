
  
    
    

    create  table
      "chinook"."main"."dim_customer_eng__dbt_tmp"
  
    as (
      

WITH customer AS (
    SELECT * FROM "chinook"."main"."dim_customer"
)

SELECT * FROM customer
    );
  
  