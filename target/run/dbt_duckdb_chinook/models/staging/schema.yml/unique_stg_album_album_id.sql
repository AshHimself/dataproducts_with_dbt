select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    album_id as unique_field,
    count(*) as n_records

from "chinook"."main"."stg_album"
where album_id is not null
group by album_id
having count(*) > 1



      
    ) dbt_internal_test