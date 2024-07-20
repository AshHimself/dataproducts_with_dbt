
  
    
    

    create  table
      "chinook"."main"."fct_too_many_joins__dbt_tmp"
  
    as (
      with all_dag_relationships as (
    select
        *
    from "chinook"."main"."int_all_dag_relationships"
    where not child_is_excluded
    and child_resource_type = 'model'
),

final as (
    select
        child as resource_name,
        child_file_path as file_path,
        count(distinct parent) as join_count
    from all_dag_relationships
    where distance = 1
    group by 1, 2
    having count(distinct parent) >= 7
)

select * from final



    

    
    

    

    


    );
  
  