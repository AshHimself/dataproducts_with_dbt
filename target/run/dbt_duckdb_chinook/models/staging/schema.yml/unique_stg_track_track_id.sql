select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    track_id as unique_field,
    count(*) as n_records

from "chinook"."main"."stg_track"
where track_id is not null
group by track_id
having count(*) > 1



      
    ) dbt_internal_test