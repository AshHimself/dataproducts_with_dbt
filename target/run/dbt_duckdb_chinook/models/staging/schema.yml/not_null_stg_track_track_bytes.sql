select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select track_bytes
from "chinook"."main"."stg_track"
where track_bytes is null



      
    ) dbt_internal_test