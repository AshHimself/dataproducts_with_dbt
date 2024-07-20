-- one record for each resource in the graph and its direct parent
with 

all_graph_resources as (
    select
        resource_id,
        resource_name,
        resource_type,
        file_path,
        directory_path, 
        file_name,
        model_type,
        materialized,
        is_public, 
        access, 
        source_name,
        is_excluded
    from "chinook"."main"."int_all_graph_resources"
),

direct_model_relationships as (
    select  
        resource_id,
        direct_parent_id,
        is_primary_relationship
    from "chinook"."main"."stg_node_relationships"
),

direct_exposure_relationships as (
    select  
        resource_id,
        direct_parent_id,
        is_primary_relationship
    from "chinook"."main"."stg_exposure_relationships"
),

direct_metrics_relationships as (
    select  
        resource_id,
        direct_parent_id,
        is_primary_relationship
    from "chinook"."main"."stg_metric_relationships"
),

-- for all resources in the graph, find their direct parent
direct_relationships as (
    select
        all_graph_resources.*,
        case 
            when all_graph_resources.resource_type = 'source' then null
            when all_graph_resources.resource_type = 'exposure' then exposures.direct_parent_id
            when all_graph_resources.resource_type = 'metric' then metrics.direct_parent_id
            when all_graph_resources.resource_type in ('model', 'snapshot', 'test') then models.direct_parent_id
            else null
        end as direct_parent_id,
        (
            all_graph_resources.resource_type = 'test'
            and models.is_primary_relationship
        ) as is_primary_test_relationship
    from all_graph_resources
    left join direct_model_relationships as models
        on all_graph_resources.resource_id = models.resource_id
    left join direct_exposure_relationships as exposures
        on all_graph_resources.resource_id = exposures.resource_id
    left join direct_metrics_relationships as metrics
        on all_graph_resources.resource_id = metrics.resource_id
),

final as (
    select
        md5(cast(coalesce(cast(resource_id as TEXT), '_dbt_utils_surrogate_key_null_') || '-' || coalesce(cast(direct_parent_id as TEXT), '_dbt_utils_surrogate_key_null_') as TEXT)) as unique_id,
        *
    from direct_relationships
)

select * from final