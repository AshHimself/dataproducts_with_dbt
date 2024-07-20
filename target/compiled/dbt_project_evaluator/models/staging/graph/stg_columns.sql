with

final as (

    

        (
            select
                cast('"chinook"."main"."base_node_columns"' as TEXT) as _dbt_source_relation,

                
                    cast("node_unique_id" as character varying(256)) as "node_unique_id" ,
                    cast("name" as character varying(256)) as "name" ,
                    cast("description" as character varying(256)) as "description" ,
                    cast("data_type" as character varying(256)) as "data_type" ,
                    cast("constraints" as character varying(256)) as "constraints" ,
                    cast("has_not_null_constraint" as BOOLEAN) as "has_not_null_constraint" ,
                    cast("constraints_count" as INTEGER) as "constraints_count" ,
                    cast("quote" as character varying(256)) as "quote" 

            from "chinook"."main"."base_node_columns"

            
        )

        union all
        

        (
            select
                cast('"chinook"."main"."base_source_columns"' as TEXT) as _dbt_source_relation,

                
                    cast("node_unique_id" as character varying(256)) as "node_unique_id" ,
                    cast("name" as character varying(256)) as "name" ,
                    cast("description" as character varying(256)) as "description" ,
                    cast("data_type" as character varying(256)) as "data_type" ,
                    cast("constraints" as character varying(256)) as "constraints" ,
                    cast("has_not_null_constraint" as BOOLEAN) as "has_not_null_constraint" ,
                    cast("constraints_count" as INTEGER) as "constraints_count" ,
                    cast("quote" as character varying(256)) as "quote" 

            from "chinook"."main"."base_source_columns"

            
        )

        
)

select * from final