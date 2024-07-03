select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select track_id
from "chinook"."main"."dim_track"
where track_id is null



      
    ) dbt_internal_test