
    
    

with child as (
    select artist_id as from_field
    from "chinook"."main"."stg_album"
    where artist_id is not null
),

parent as (
    select artist_id as to_field
    from "chinook"."main"."stg_artist"
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null


