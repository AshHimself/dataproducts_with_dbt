select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select artist_id
from "chinook"."main"."stg_artist"
where artist_id is null



      
    ) dbt_internal_test