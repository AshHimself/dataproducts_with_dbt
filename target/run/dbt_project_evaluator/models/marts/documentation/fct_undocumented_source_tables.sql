
  
    
    

    create  table
      "chinook"."main"."fct_undocumented_source_tables__dbt_tmp"
  
    as (
      with

all_resources as (
    select * from "chinook"."main"."int_all_graph_resources"
    where not is_excluded

),

final as (

    select
        resource_name

    from all_resources
    where not is_described and resource_type = 'source'

)

select * from final



    

    
    

    

    


    );
  
  