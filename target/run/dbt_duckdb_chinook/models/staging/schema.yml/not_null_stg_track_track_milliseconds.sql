select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select track_milliseconds
from "chinook"."main"."stg_track"
where track_milliseconds is null



      
    ) dbt_internal_test