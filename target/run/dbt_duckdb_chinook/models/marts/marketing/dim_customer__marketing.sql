
  
    
    

    create  table
      "chinook"."main_marketing"."dim_customer__dbt_tmp"
  
    as (
      

WITH customer AS (
    SELECT * FROM "chinook"."main_human_resources"."dim_customer" AS hr
    INNER JOIN
        "chinook"."main"."stg_customer_marketingsystem" AS marketing
        ON hr.customer_id = marketing.customer_id
)

SELECT * FROM customer
    );
  
  