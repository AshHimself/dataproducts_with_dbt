select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select album_id
from "chinook"."main"."stg_track"
where album_id is null



      
    ) dbt_internal_test