select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select media_type_name
from "chinook"."main"."stg_media_type"
where media_type_name is null



      
    ) dbt_internal_test