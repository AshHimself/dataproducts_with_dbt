select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select track_name
from "chinook"."main"."stg_track"
where track_name is null



      
    ) dbt_internal_test